﻿-- --------------------
-- TellMeWhen
-- Originally by Nephthys of Hyjal <lieandswell@yahoo.com>

-- Other contributions by:
--		Sweetmms of Blackrock, Oozebull of Twisting Nether, Oodyboo of Mug'thol,
--		Banjankri of Blackrock, Predeter of Proudmoore, Xenyr of Aszune

-- Currently maintained by
-- Cybeloras of Aerie Peak
-- --------------------


if not TMW then return end

local TMW = TMW
local L = TMW.L
local print = TMW.print

local pairs, type, ipairs, bit, select = 
      pairs, type, ipairs, bit, select

local _, pclass = UnitClass("Player")


TMW:RegisterUpgrade(72013, {
	global = function()
		-- The class spell cache is no longer generated dynamically - too many problems with it
		-- (lacking many spells, sharing over comm is vulnerable to bad data, etc.)
		TMW.db.global.ClassSpellCache = nil
		TMW.db.global.XPac_ClassSpellCache = nil

		-- Also nil out some other unused, old SVs.
		TMW.db.global.XPac = nil
		TMW.db.global.XPac_AuraCache = nil
	end,
})

local ClassSpellCache = TMW:NewModule("ClassSpellCache", "AceEvent-3.0", "AceComm-3.0", "AceSerializer-3.0", "AceTimer-3.0")


local RaceMap = {
	[1] = "Human",
	[2] = "Orc",
	[3] = "Dwarf",
	[4] = "NightElf",
	[5] = "Scourge",
	[6] = "Tauren",
	[7] = "Gnome",
	[8] = "Troll",
	[10] = "BloodElf",
	[11] = "Draenei",
}

local Cache = {
	[1] = {71,72,78,100,284,285,355,469,676,694,772,845,871,1160,1161,1464,1608,1680,1715,1719,2048,2457,2458,2565,2687,3411,5242,5246,5308,6178,6190,6192,6343,6546,6547,6548,6552,6572,6574,6673,7369,7379,7384,7386,8198,8204,8205,8820,11549,11550,11551,11554,11555,11556,11564,11565,11566,11567,11572,11573,11574,11578,11580,11581,11600,11601,11604,11605,11608,11609,12163,12281,12282,12284,12285,12286,12287,12289,12290,12292,12294,12295,12296,12298,12299,12300,12301,12308,12311,12312,12313,12317,12318,12319,12321,12322,12323,12324,12328,12329,12330,12658,12663,12664,12665,12666,12668,12676,12677,12678,12697,12700,12701,12702,12703,12704,12711,12712,12724,12725,12726,12727,12750,12751,12752,12753,12761,12762,12763,12764,12781,12783,12784,12785,12797,12799,12803,12804,12809,12810,12811,12812,12813,12814,12815,12818,12834,12835,12849,12852,12853,12855,12856,12857,12858,12860,12861,12862,12867,12876,12877,12878,12879,12950,12958,12959,12960,12963,12971,12972,12973,12974,12975,12999,13000,13001,13002,13045,13046,13047,13048,16462,16463,16464,16465,16466,16487,16489,16492,16493,16494,16538,16539,16540,16541,16542,18499,20230,20243,20252,20496,20500,20501,20502,20503,20504,20505,20569,20658,20660,20661,20662,21551,21552,21553,23584,23585,23586,23587,23588,23695,23881,23920,23922,23923,23924,23925,25202,25203,25208,25231,25234,25236,25241,25242,25248,25258,25264,25269,25286,25288,25289,29140,29143,29144,29590,29591,29592,29593,29594,29598,29599,29623,29707,29721,29723,29724,29725,29759,29760,29761,29762,29763,29776,29787,29790,29792,29801,29834,29836,29838,29859,29888,29889,30016,30022,30324,30330,30356,30357,34428,35446,35448,35449,46845,46854,46855,46859,46860,46865,46866,46867,46908,46909,46910,46911,46913,46914,46915,46917,46924,46945,46949,46951,46952,46953,46968,47294,47295,47296,47436,47437,47439,47440,47449,47450,47465,47470,47471,47474,47475,47485,47486,47487,47488,47497,47498,47501,47502,47519,47520,50685,50686,50687,50720,55694,56611,56612,56613,56614,56636,56637,56638,56924,56927,56929,56930,56931,56932,57499,57755,57823,58872,58874,59088,59089,60970,61216,61221,61222,64382,64976},
	[2] = {465,498,633,635,639,642,643,647,853,879,1022,1026,1032,1038,1042,1044,1152,2800,2812,3472,4987,5502,5588,5589,5599,5614,5615,5923,5924,5925,5926,6940,7294,7328,9452,9453,9799,10278,10290,10291,10292,10293,10298,10299,10300,10301,10308,10310,10312,10313,10314,10318,10322,10324,10326,10328,10329,13819,19740,19742,19746,19750,19752,19834,19835,19836,19837,19838,19850,19852,19853,19854,19876,19888,19891,19895,19896,19897,19898,19899,19900,19939,19940,19941,19942,19943,20042,20045,20049,20056,20057,20060,20061,20062,20063,20064,20066,20096,20097,20098,20099,20100,20101,20102,20103,20104,20105,20111,20112,20113,20116,20117,20118,20119,20120,20121,20127,20130,20135,20138,20139,20140,20143,20144,20145,20146,20147,20154,20164,20165,20166,20174,20175,20177,20179,20180,20181,20182,20196,20197,20198,20205,20206,20207,20208,20209,20210,20212,20213,20214,20215,20216,20217,20224,20225,20234,20235,20237,20238,20239,20244,20245,20254,20255,20256,20257,20258,20259,20260,20261,20262,20263,20264,20265,20266,20271,20330,20331,20332,20335,20336,20337,20359,20360,20361,20375,20468,20469,20470,20473,20487,20488,20772,20773,20911,20922,20923,20924,20925,20927,20928,20929,20930,21084,23214,24239,24274,24275,25290,25291,25292,25780,25782,25829,25836,25894,25898,25899,25916,25918,25956,25957,25988,26016,26022,26023,26573,27135,27136,27137,27138,27139,27140,27141,27142,27143,27149,27150,27151,27152,27153,27154,27173,27174,27179,27180,31785,31789,31801,31821,31822,31823,31825,31826,31828,31829,31830,31833,31835,31836,31837,31838,31839,31840,31841,31842,31844,31845,31848,31849,31850,31851,31852,31858,31859,31860,31866,31867,31868,31869,31871,31872,31876,31877,31878,31879,31880,31881,31884,31935,32043,32223,32699,32700,33072,33776,34767,34769,35395,35396,35397,48781,48782,48784,48785,48788,48800,48801,48805,48806,48816,48817,48818,48819,48824,48825,48826,48827,48931,48932,48933,48934,48935,48936,48937,48938,48941,48942,48943,48945,48947,48949,48950,48951,48952,53375,53376,53379,53380,53381,53382,53385,53407,53408,53484,53486,53488,53501,53502,53503,53519,53527,53530,53551,53552,53553,53556,53557,53563,53569,53576,53583,53585,53590,53591,53592,53595,53600,53601,53648,53660,53661,53671,53673,53695,53696,53709,53710,53711,53736,54043,54151,54154,54155,54428,61411,62124,63646,63647,63648,63649,63650,64205,348704,356110,356112},
	[3] = {75,136,781,883,982,1002,1130,1462,1494,1495,1499,1510,1513,1515,1543,1978,2641,2643,2973,2974,3034,3043,3044,3045,3111,3661,3662,5116,5118,5384,6197,6991,13159,13161,13163,13165,13542,13543,13544,13549,13550,13551,13552,13553,13554,13555,13795,13809,13813,14260,14261,14262,14263,14264,14265,14266,14269,14270,14271,14281,14282,14283,14284,14285,14286,14287,14288,14289,14290,14294,14295,14302,14303,14304,14305,14310,14311,14316,14317,14318,14319,14320,14321,14322,14323,14324,14325,14326,14327,19159,19160,19168,19180,19181,19184,19255,19256,19257,19258,19259,19263,19286,19287,19290,19294,19295,19297,19298,19306,19370,19371,19373,19376,19386,19387,19388,19407,19412,19416,19417,19418,19419,19420,19421,19422,19423,19426,19427,19429,19430,19431,19434,19454,19455,19456,19461,19462,19464,19465,19466,19485,19487,19488,19489,19490,19498,19499,19500,19503,19506,19507,19508,19509,19549,19550,19551,19552,19553,19554,19555,19556,19559,19560,19572,19573,19574,19575,19577,19578,19583,19584,19585,19586,19587,19590,19592,19598,19599,19600,19601,19602,19609,19610,19612,19616,19617,19618,19619,19620,19621,19622,19623,19624,19625,19801,19878,19879,19880,19882,19883,19884,19885,20043,20190,20736,20895,20900,20901,20902,20903,20904,20909,20910,23989,24132,24133,24283,24296,24297,24443,24691,25294,25295,25296,27014,27016,27019,27021,27022,27023,27025,27044,27045,27046,27065,27067,27068,34026,34074,34120,34453,34454,34455,34459,34460,34462,34464,34465,34466,34467,34468,34469,34470,34475,34476,34477,34482,34483,34484,34485,34486,34487,34488,34489,34490,34491,34492,34493,34494,34496,34497,34498,34499,34500,34502,34503,34506,34507,34508,34600,34692,34838,34839,34948,34949,34950,34954,35029,35030,35100,35102,35104,35110,35111,36916,48989,48990,48995,48996,48998,48999,49000,49001,49011,49012,49044,49045,49047,49048,49049,49050,49051,49052,49055,49056,49066,49067,49071,52783,52785,52786,52787,52788,53209,53215,53216,53217,53221,53222,53224,53228,53232,53234,53237,53238,53241,53243,53244,53245,53246,53252,53253,53256,53259,53260,53262,53263,53264,53265,53270,53271,53290,53291,53292,53295,53296,53297,53298,53299,53301,53302,53303,53304,53338,53339,53351,53620,53621,53622,56314,56315,56316,56317,56318,56333,56336,56337,56339,56340,56341,56342,56343,56344,56641,58431,58434,60051,60052,60053,60192,61005,61006,61846,61847,62757,63457,63458,63668,63669,63670,63671,63672},
	[4] = {53,408,703,921,1329,1725,1752,1757,1758,1759,1760,1766,1776,1784,1804,1833,1842,1856,1857,1860,1943,1966,2070,2094,2098,2589,2590,2591,2836,2983,5171,5277,5938,5952,6760,6761,6762,6768,6770,6774,8621,8623,8624,8631,8632,8633,8637,8639,8640,8643,8647,8676,8696,8721,8724,8725,11267,11268,11269,11273,11274,11275,11279,11280,11281,11289,11290,11293,11294,11297,11299,11300,11303,11305,13705,13706,13709,13712,13713,13715,13732,13733,13741,13742,13743,13750,13754,13788,13789,13792,13793,13800,13801,13802,13803,13804,13805,13806,13807,13832,13843,13844,13845,13848,13849,13851,13852,13853,13854,13863,13865,13866,13867,13872,13875,13877,13958,13960,13961,13962,13963,13964,13970,13971,13975,13976,13979,13980,13981,13983,14057,14062,14063,14066,14070,14071,14072,14076,14079,14080,14082,14083,14094,14113,14114,14115,14116,14117,14128,14132,14135,14136,14137,14138,14139,14140,14141,14142,14144,14148,14156,14158,14159,14160,14161,14162,14163,14164,14165,14166,14168,14169,14171,14172,14173,14174,14175,14176,14177,14179,14183,14185,14186,14190,14193,14194,14195,14251,14278,14983,16511,16513,16514,16515,17347,17348,18427,18428,18429,25300,25302,26669,26679,26839,26861,26862,26863,26864,26865,26867,26884,26889,27441,27448,30892,30893,30894,30895,30902,30903,30904,30905,30906,30919,30920,31016,31122,31123,31124,31126,31130,31131,31208,31209,31211,31212,31213,31216,31217,31218,31219,31220,31221,31222,31223,31224,31226,31227,31228,31229,31230,31234,31235,31236,31244,31245,31380,31382,31383,32601,32645,32684,34411,34412,34413,35541,35550,35551,35552,35553,36554,48637,48638,48656,48657,48658,48659,48660,48663,48666,48667,48668,48671,48672,48673,48674,48675,48676,48689,48690,48691,51625,51626,51627,51628,51629,51632,51633,51634,51635,51636,51662,51664,51665,51667,51668,51669,51672,51674,51679,51682,51685,51686,51687,51688,51689,51690,51692,51696,51698,51700,51701,51708,51709,51710,51711,51712,51713,51722,51723,51724,57934,57992,57993,58410,58413,58414,58415,58422,58423,58424,58425,58426,61329,61330,61331},
	[5] = {17,139,453,527,528,552,585,586,588,589,591,592,594,596,598,600,602,605,724,970,976,984,988,992,996,1004,1006,1243,1244,1245,1706,2006,2010,2050,2052,2053,2054,2055,2060,2061,2096,2767,2791,2944,3747,6060,6063,6064,6065,6066,6074,6075,6076,6077,6078,6346,7128,8092,8102,8103,8104,8105,8106,8122,8124,8129,9472,9473,9474,9484,9485,10060,10880,10881,10888,10890,10892,10893,10894,10898,10899,10900,10901,10909,10915,10916,10917,10927,10928,10929,10933,10934,10937,10938,10945,10946,10947,10951,10952,10955,10957,10958,10960,10961,10963,10964,10965,14520,14521,14522,14523,14531,14747,14748,14749,14750,14751,14752,14767,14768,14769,14770,14771,14772,14774,14776,14777,14780,14781,14784,14785,14788,14789,14790,14791,14818,14819,14889,14892,14898,14901,14908,14909,14910,14911,14912,14913,14914,15008,15009,15010,15011,15012,15013,15014,15017,15018,15020,15028,15029,15030,15031,15237,15257,15259,15260,15261,15262,15263,15264,15265,15266,15267,15270,15272,15273,15274,15275,15286,15307,15308,15309,15310,15311,15312,15313,15314,15316,15317,15318,15320,15327,15328,15331,15332,15335,15336,15337,15338,15349,15354,15355,15356,15362,15363,15392,15407,15430,15431,15448,15473,15487,17191,17311,17312,17313,17314,17322,17323,18530,18531,18533,18534,18535,18551,18552,18553,18554,18555,18807,19236,19238,19240,19241,19242,19243,19276,19277,19278,19279,19280,20711,20770,21562,21564,25210,25213,25217,25218,25221,25222,25233,25235,25308,25312,25314,25315,25316,25331,25363,25364,25367,25368,25372,25375,25384,25387,25389,25392,25431,25433,25435,25437,25467,27681,27683,27789,27790,27799,27800,27801,27811,27815,27816,27839,27840,27841,27870,27871,27900,27901,27902,27903,27904,28275,32375,32379,32546,32996,32999,33076,33142,33145,33146,33150,33154,33158,33159,33160,33161,33162,33167,33171,33172,33186,33190,33191,33192,33193,33201,33202,33206,33213,33214,33215,33221,33222,33223,33224,33225,33371,34433,34753,34859,34860,34861,34863,34864,34865,34866,34908,34909,34910,34914,34916,34917,39374,45234,45243,45244,47507,47508,47509,47511,47515,47516,47517,47535,47536,47537,47540,47558,47559,47560,47562,47564,47565,47566,47567,47569,47570,47573,47577,47578,47580,47581,47582,47585,47586,47587,47588,47788,48040,48045,48062,48063,48065,48066,48067,48068,48070,48071,48072,48073,48074,48077,48078,48086,48087,48088,48089,48112,48113,48119,48120,48122,48123,48124,48125,48126,48127,48134,48135,48155,48156,48157,48158,48159,48160,48161,48162,48168,48169,48170,48171,48172,48173,48299,48300,49868,51166,51167,52795,52797,52798,52799,52800,52802,52803,53005,53006,53007,53023,57470,57472,58381,63504,63505,63506,63534,63542,63543,63574,63625,63626,63627,63730,63733,63737,64044,64127,64129,64843,64901,64904},
	[6] = {42650,43265,45462,45463,45477,45524,45529,45902,46584,47476,47528,47541,47568,48263,48265,48266,48707,48721,48743,48778,48792,48962,48963,48965,48977,48978,48979,48982,48985,48987,48988,48997,49004,49005,49006,49013,49015,49016,49018,49020,49023,49024,49027,49028,49032,49036,49039,49042,49137,49140,49142,49143,49145,49146,49149,49158,49175,49182,49184,49186,49188,49189,49194,49200,49202,49203,49206,49208,49217,49219,49220,49222,49223,49224,49226,49390,49391,49392,49393,49394,49395,49455,49467,49471,49477,49478,49479,49480,49483,49488,49489,49490,49491,49495,49497,49500,49501,49503,49504,49508,49509,49526,49529,49530,49533,49534,49538,49542,49543,49562,49564,49565,49567,49568,49571,49572,49576,49588,49589,49599,49610,49611,49627,49628,49631,49632,49633,49635,49636,49638,49654,49655,49657,49661,49662,49663,49664,49786,49787,49788,49789,49790,49791,49796,49892,49893,49894,49895,49896,49903,49904,49909,49917,49918,49919,49920,49921,49923,49924,49926,49927,49928,49929,49930,49936,49937,49938,49939,49940,49941,49998,49999,50029,50031,50033,50034,50040,50041,50043,50115,50117,50118,50119,50120,50121,50127,50128,50129,50130,50137,50138,50147,50149,50150,50151,50152,50154,50187,50190,50191,50365,50371,50384,50385,50391,50392,50842,50880,50884,50885,50886,50887,51052,51099,51108,51109,51123,51127,51128,51129,51130,51160,51161,51267,51271,51325,51326,51327,51328,51409,51410,51411,51416,51417,51418,51419,51423,51424,51425,51456,51459,51462,51463,51464,51465,51468,51472,51473,51745,51746,51986,52143,52284,53137,53138,53323,53331,53341,53342,53343,53344,53428,54446,54447,54637,54638,54639,55050,55061,55062,55090,55107,55108,55129,55130,55131,55132,55133,55136,55225,55226,55233,55236,55237,55258,55259,55260,55261,55262,55265,55268,55270,55271,55610,55620,55623,55666,55667,56222,56815,56822,56834,56835,57330,57623,59057,59879,59921,61154,61155,61156,61157,61158,61999,62158,62900,62901,62902,62903,62904,62905,62908,63560,65661,66191,66192,66198,66799,66814,66815,66816,66817,70164},
	[7] = {131,324,325,331,332,370,403,421,526,529,546,547,548,556,905,913,915,930,939,943,945,959,974,1064,1535,2008,2062,2484,2645,2825,2860,2894,3599,3738,5394,5675,5730,6041,6196,6363,6364,6365,6375,6377,6390,6391,6392,6495,8004,8005,8008,8010,8012,8017,8018,8019,8024,8027,8030,8033,8038,8042,8044,8045,8046,8050,8052,8053,8056,8058,8071,8075,8134,8143,8154,8155,8160,8161,8170,8177,8181,8184,8190,8227,8232,8235,8249,8349,8498,8499,8502,8503,8512,10391,10392,10395,10396,10399,10406,10407,10408,10412,10413,10414,10427,10428,10431,10432,10437,10438,10442,10447,10448,10456,10462,10463,10466,10467,10468,10472,10473,10478,10479,10486,10495,10496,10497,10526,10537,10538,10585,10586,10587,10595,10600,10601,10605,10622,10623,11306,11307,11314,11315,15207,15208,16035,16038,16039,16040,16041,16043,16086,16089,16105,16106,16107,16108,16109,16110,16111,16112,16113,16114,16115,16116,16130,16160,16161,16164,16166,16173,16176,16178,16179,16180,16181,16182,16184,16187,16188,16190,16194,16196,16198,16205,16206,16209,16210,16211,16212,16213,16214,16215,16216,16217,16218,16219,16220,16221,16222,16223,16224,16225,16226,16227,16228,16229,16230,16232,16235,16240,16252,16254,16255,16256,16258,16259,16261,16262,16266,16268,16271,16272,16281,16282,16283,16284,16287,16290,16293,16295,16302,16303,16304,16305,16306,16307,16308,16309,16339,16341,16342,16355,16356,16362,16387,16544,16578,16579,16580,16581,16582,17364,17485,17486,17487,17488,17489,20608,20609,20610,20776,20777,24398,25357,25361,25391,25396,25420,25422,25423,25439,25442,25448,25449,25454,25457,25464,25469,25472,25489,25500,25505,25508,25509,25525,25528,25533,25535,25537,25546,25547,25552,25557,25560,25563,25567,25570,25574,25590,28996,28997,28998,28999,29000,29062,29064,29065,29079,29080,29082,29084,29086,29179,29180,29187,29189,29191,29192,29193,29202,29205,29206,29228,30160,30664,30665,30666,30672,30673,30674,30675,30678,30679,30706,30798,30802,30808,30809,30812,30813,30814,30816,30818,30819,30823,30864,30865,30866,30867,30868,30869,30872,30873,30881,30883,30884,30885,30886,32182,32593,32594,33736,36936,43338,49230,49231,49232,49233,49235,49236,49237,49238,49270,49271,49272,49273,49275,49276,49277,49280,49281,49283,49284,51466,51470,51474,51478,51479,51480,51481,51482,51483,51485,51486,51490,51505,51514,51521,51522,51523,51524,51525,51526,51527,51528,51529,51530,51531,51532,51533,51554,51555,51556,51557,51558,51560,51561,51562,51563,51564,51565,51566,51730,51881,51883,51884,51885,51886,51988,51991,51992,51993,51994,52127,52129,52131,52134,52136,52138,52456,55198,55458,55459,57622,57720,57721,57722,57960,57994,58580,58581,58582,58643,58649,58652,58656,58699,58703,58704,58731,58734,58737,58739,58741,58745,58746,58749,58751,58753,58755,58756,58757,58771,58773,58774,58785,58789,58790,58794,58795,58796,58801,58803,58804,59156,59158,59159,60043,60103,60184,60185,60187,60188,61295,61299,61300,61301,61649,61650,61654,61657,62097,62098,62099,62100,62101,63370,63372,63373,63374},
	[8] = {10,66,116,118,120,122,130,133,143,145,168,205,475,543,587,597,604,759,837,865,990,1008,1449,1459,1460,1461,1463,1953,2120,2121,2136,2137,2138,2139,2948,3140,3552,3561,3562,3563,3565,3566,3567,5143,5144,5145,5504,5505,5506,6117,6127,6129,6131,6141,6143,7300,7301,7302,7320,7322,8400,8401,8402,8406,8407,8408,8412,8413,8416,8417,8422,8423,8427,8437,8438,8439,8444,8445,8446,8450,8451,8455,8457,8458,8461,8462,8492,8494,8495,10053,10054,10059,10138,10139,10140,10144,10145,10148,10149,10150,10151,10156,10157,10159,10160,10161,10169,10170,10173,10174,10177,10179,10180,10181,10185,10186,10187,10191,10192,10193,10197,10199,10201,10202,10205,10206,10207,10211,10212,10215,10216,10219,10220,10223,10225,10230,11069,11070,11071,11078,11080,11083,11094,11095,11100,11103,11108,11113,11115,11119,11120,11124,11129,11151,11160,11170,11175,11180,11185,11189,11190,11207,11210,11213,11222,11232,11237,11242,11247,11252,11255,11366,11367,11368,11416,11417,11418,11419,11420,11426,11958,12042,12043,12051,12338,12339,12340,12341,12349,12350,12351,12353,12357,12358,12378,12398,12399,12400,12463,12464,12467,12469,12472,12473,12487,12488,12489,12490,12496,12497,12500,12501,12502,12503,12505,12518,12519,12522,12523,12524,12525,12526,12569,12571,12574,12575,12576,12577,12592,12598,12605,12606,12672,12824,12825,12826,12839,12840,12846,12847,12848,12872,12873,12952,12953,12982,12983,13018,13019,13020,13021,13031,13032,13033,13043,15047,15058,15059,15060,16757,16758,16763,16765,16766,16769,16770,18459,18460,18462,18463,18464,18809,22782,22783,23028,25304,25306,25345,27070,27071,27072,27073,27074,27075,27078,27079,27080,27082,27085,27086,27087,27088,27090,27101,27124,27125,27126,27127,27128,27130,27131,27132,27133,27134,28271,28272,28332,28574,28592,28593,28609,28612,29074,29075,29076,29438,29439,29440,29441,29444,29447,30449,30451,30455,30482,31569,31570,31571,31572,31574,31575,31579,31582,31583,31584,31585,31586,31587,31588,31589,31638,31639,31640,31641,31642,31656,31657,31658,31661,31667,31668,31669,31670,31672,31674,31675,31676,31677,31678,31679,31680,31682,31683,31687,32266,32267,32271,32272,32796,33041,33042,33043,33405,33690,33691,33717,33933,33938,33944,33946,34293,34295,34296,35578,35581,35715,35717,37420,38692,38697,38699,38704,42832,42833,42841,42842,42843,42846,42858,42859,42872,42873,42890,42891,42894,42896,42897,42913,42914,42917,42920,42921,42925,42926,42930,42931,42939,42940,42944,42945,42949,42950,42955,42956,42985,42995,43002,43008,43010,43012,43015,43017,43019,43020,43023,43024,43038,43039,43045,43046,43987,44378,44379,44394,44395,44396,44397,44398,44399,44400,44402,44403,44404,44425,44442,44443,44445,44446,44448,44449,44457,44469,44470,44471,44472,44543,44545,44546,44548,44549,44557,44560,44561,44566,44567,44568,44570,44571,44572,44614,44745,44780,44781,45438,47610,49358,49359,49360,49361,53140,53142,54354,54486,54488,54489,54490,54646,54658,54659,54734,54747,54749,54787,55091,55092,55094,55339,55340,55342,55359,55360,58659,61024,61305,61316,61721,61780,64353,64357,70909},
	[9] = {126,132,172,348,603,686,687,688,689,691,693,695,696,697,698,699,702,705,706,707,709,710,712,713,755,980,1014,1086,1088,1094,1098,1106,1108,1120,1122,1454,1455,1456,1490,1714,1949,2362,2941,3698,3699,3700,5138,5484,5500,5676,5697,5699,5740,5782,6201,6202,6205,6213,6215,6217,6219,6222,6223,6229,6353,6366,6789,7641,7646,7648,7651,8288,8289,11659,11660,11661,11665,11667,11668,11671,11672,11675,11677,11678,11683,11684,11687,11688,11689,11693,11694,11695,11699,11700,11707,11708,11711,11712,11713,11719,11721,11722,11725,11726,11729,11730,11733,11734,11735,11739,11740,17727,17728,17778,17779,17780,17783,17784,17785,17788,17789,17790,17791,17792,17793,17796,17801,17802,17803,17804,17805,17810,17811,17812,17813,17814,17815,17833,17834,17877,17917,17918,17919,17920,17921,17922,17923,17924,17925,17926,17927,17928,17929,17930,17951,17952,17953,17954,17955,17956,17957,17958,17959,17962,18073,18094,18095,18096,18119,18120,18126,18127,18130,18135,18136,18174,18175,18176,18179,18180,18182,18183,18213,18218,18219,18220,18223,18271,18272,18273,18274,18275,18288,18372,18540,18647,18692,18693,18694,18695,18696,18697,18698,18699,18703,18704,18705,18706,18707,18708,18709,18710,18731,18743,18744,18754,18755,18756,18767,18768,18769,18770,18771,18772,18773,18827,18829,18867,18868,18869,18870,18871,18937,18938,19028,20752,20755,20756,20757,23785,23822,23823,23824,23825,25307,25309,25311,27209,27210,27211,27212,27213,27215,27216,27217,27218,27219,27220,27222,27223,27224,27228,27230,27238,27243,27250,27259,27260,27263,27265,28172,28176,28189,28610,29722,29858,29893,30054,30057,30060,30061,30062,30063,30064,30108,30143,30144,30145,30146,30242,30245,30246,30247,30248,30283,30288,30289,30290,30291,30292,30293,30295,30296,30299,30301,30302,30319,30320,30321,30326,30404,30405,30413,30414,30459,30545,30546,30909,30910,32231,32381,32382,32383,32385,32387,32392,32393,32394,32477,32483,32484,34935,34938,34939,35691,35692,35693,47193,47195,47196,47197,47198,47199,47200,47201,47202,47203,47204,47205,47220,47221,47223,47230,47231,47236,47237,47238,47239,47240,47245,47246,47247,47258,47259,47260,47266,47267,47268,47269,47270,47793,47808,47809,47810,47811,47812,47813,47814,47815,47819,47820,47823,47824,47825,47826,47827,47835,47836,47837,47838,47841,47843,47846,47847,47855,47856,47857,47859,47860,47863,47864,47865,47867,47871,47878,47884,47886,47888,47889,47890,47891,47892,47893,47897,48018,48020,48181,50511,50581,50589,50796,53646,53754,53759,54037,54038,54117,54118,54347,54348,54349,57946,58435,58887,59092,59161,59163,59164,59170,59171,59172,59671,59672,59738,59739,59740,59741,60219,60220,61191,61290,63108,63117,63121,63123,63156,63158,63245,63349,63350,63351,75445},
	[11] = {99,339,467,740,768,769,770,774,779,780,782,783,1058,1062,1066,1075,1079,1082,1126,1430,1735,1822,1823,1824,1850,2090,2091,2637,2782,2893,2908,2912,3029,3627,5176,5177,5178,5179,5180,5185,5186,5187,5188,5189,5195,5196,5201,5209,5211,5215,5217,5221,5225,5229,5232,5234,5420,5487,5570,6756,6778,6780,6785,6787,6793,6795,6798,6800,6807,6808,6809,8903,8905,8907,8910,8914,8918,8921,8924,8925,8926,8927,8928,8929,8936,8938,8939,8940,8941,8946,8949,8950,8951,8955,8972,8983,8992,8998,9000,9005,9490,9492,9493,9634,9745,9747,9750,9752,9754,9756,9758,9821,9823,9827,9829,9830,9833,9834,9835,9839,9840,9841,9845,9846,9849,9850,9852,9853,9856,9857,9858,9862,9863,9866,9867,9875,9876,9880,9881,9884,9885,9888,9889,9892,9894,9896,9898,9901,9904,9908,9910,9912,16689,16810,16811,16812,16813,16814,16815,16816,16817,16818,16819,16820,16821,16822,16833,16834,16835,16836,16839,16840,16845,16846,16847,16850,16857,16858,16859,16860,16861,16862,16864,16880,16896,16897,16899,16909,16910,16911,16912,16913,16914,16923,16924,16929,16930,16931,16934,16935,16936,16937,16938,16940,16941,16942,16943,16944,16947,16948,16949,16961,16966,16968,16972,16974,16975,16979,16998,16999,17002,17003,17004,17005,17006,17007,17050,17051,17056,17058,17059,17060,17061,17063,17065,17066,17069,17070,17071,17072,17073,17074,17075,17076,17077,17078,17104,17106,17107,17108,17111,17112,17113,17116,17118,17119,17120,17123,17124,17329,17401,17402,18562,18657,18658,18960,20484,20719,20739,20742,20747,20748,21849,21850,22568,22570,22812,22827,22828,22829,22842,24248,24858,24866,24894,24943,24944,24945,24946,24968,24969,24970,24971,24972,24974,24975,24976,24977,25297,25298,25299,26978,26979,26980,26981,26982,26983,26984,26985,26986,26987,26988,26989,26990,26991,26992,26994,26995,26996,26997,26998,27000,27001,27002,27003,27004,27005,27006,27008,27009,27012,27013,29166,31018,31709,33357,33589,33590,33591,33592,33596,33597,33599,33600,33601,33602,33603,33604,33605,33606,33607,33745,33763,33786,33831,33851,33852,33853,33855,33856,33859,33866,33867,33872,33873,33876,33878,33879,33880,33881,33882,33883,33886,33887,33888,33889,33890,33891,33917,33943,33956,33957,33982,33983,33986,33987,34151,34152,34153,34297,34300,35363,35364,37116,37117,40120,44203,44205,44206,44207,44208,48377,48378,48384,48389,48392,48393,48395,48396,48409,48410,48411,48412,48432,48433,48434,48438,48440,48441,48442,48443,48446,48447,48450,48451,48459,48461,48462,48463,48464,48465,48467,48468,48469,48470,48477,48479,48480,48483,48484,48485,48488,48489,48491,48492,48494,48495,48496,48499,48500,48505,48506,48510,48511,48514,48516,48521,48525,48532,48535,48536,48537,48539,48544,48545,48559,48560,48561,48562,48563,48564,48565,48566,48567,48568,48569,48570,48571,48572,48573,48574,48575,48576,48577,48578,48579,49376,49377,49799,49800,49802,49803,50212,50213,50334,50464,50516,50763,50764,50765,50766,50767,50768,50769,51179,51180,51181,51182,51183,51268,51269,52610,53199,53200,53201,53223,53225,53226,53248,53249,53251,53307,53308,53312,57810,57811,57812,57813,57814,57849,57850,57851,57865,57873,57876,57877,57878,57880,57881,61336,61345,61346,61384,62078,62600,63410,63411,63503,65139},
	["PET"] = {[1742]=3,[2649]=3,[3009]=3,[3010]=3,[4167]=3,[14916]=3,[14917]=3,[14918]=3,[14919]=3,[14920]=3,[14921]=3,[16827]=3,[16828]=3,[16829]=3,[16830]=3,[16831]=3,[16832]=3,[17253]=3,[17255]=3,[17256]=3,[17257]=3,[17258]=3,[17259]=3,[17260]=3,[17261]=3,[19596]=3,[23145]=3,[24423]=3,[24450]=3,[24452]=3,[24453]=3,[24577]=3,[24578]=3,[24579]=3,[24583]=3,[24586]=3,[24587]=3,[24604]=3,[24640]=3,[24844]=3,[25008]=3,[25009]=3,[25010]=3,[25011]=3,[25012]=3,[26064]=3,[26090]=3,[27047]=3,[27049]=3,[27050]=3,[27051]=3,[27060]=3,[34889]=3,[35290]=3,[35291]=3,[35292]=3,[35293]=3,[35294]=3,[35295]=3,[35323]=3,[35346]=3,[35387]=3,[35389]=3,[35392]=3,[49966]=3,[49967]=3,[49968]=3,[49969]=3,[49970]=3,[49971]=3,[49972]=3,[49973]=3,[49974]=3,[50245]=3,[50256]=3,[50271]=3,[50274]=3,[50285]=3,[50318]=3,[50433]=3,[50479]=3,[50498]=3,[50518]=3,[50519]=3,[50541]=3,[50871]=3,[52012]=3,[52013]=3,[52014]=3,[52015]=3,[52016]=3,[52234]=3,[52395]=3,[52396]=3,[52397]=3,[52398]=3,[52399]=3,[52471]=3,[52472]=3,[52473]=3,[52474]=3,[52475]=3,[52476]=3,[52825]=3,[52858]=3,[53175]=3,[53176]=3,[53178]=3,[53179]=3,[53180]=3,[53181]=3,[53182]=3,[53183]=3,[53184]=3,[53186]=3,[53187]=3,[53203]=3,[53204]=3,[53205]=3,[53397]=3,[53401]=3,[53409]=3,[53411]=3,[53426]=3,[53427]=3,[53429]=3,[53430]=3,[53434]=3,[53450]=3,[53451]=3,[53476]=3,[53477]=3,[53478]=3,[53480]=3,[53481]=3,[53482]=3,[53483]=3,[53485]=3,[53490]=3,[53497]=3,[53508]=3,[53511]=3,[53512]=3,[53514]=3,[53516]=3,[53517]=3,[53526]=3,[53528]=3,[53529]=3,[53532]=3,[53533]=3,[53537]=3,[53538]=3,[53540]=3,[53542]=3,[53543]=3,[53544]=3,[53545]=3,[53546]=3,[53547]=3,[53548]=3,[53554]=3,[53555]=3,[53558]=3,[53559]=3,[53560]=3,[53561]=3,[53562]=3,[53564]=3,[53565]=3,[53566]=3,[53567]=3,[53568]=3,[53571]=3,[53572]=3,[53573]=3,[53574]=3,[53575]=3,[53578]=3,[53579]=3,[53580]=3,[53581]=3,[53582]=3,[53584]=3,[53586]=3,[53587]=3,[53588]=3,[53589]=3,[53593]=3,[53594]=3,[53596]=3,[53597]=3,[53598]=3,[54044]=3,[54644]=3,[54680]=3,[54706]=3,[55482]=3,[55483]=3,[55484]=3,[55485]=3,[55487]=3,[55488]=3,[55489]=3,[55490]=3,[55491]=3,[55492]=3,[55495]=3,[55496]=3,[55497]=3,[55498]=3,[55499]=3,[55505]=3,[55506]=3,[55507]=3,[55508]=3,[55509]=3,[55555]=3,[55556]=3,[55557]=3,[55709]=3,[55728]=3,[55749]=3,[55750]=3,[55751]=3,[55752]=3,[55753]=3,[55754]=3,[56626]=3,[56627]=3,[56628]=3,[56629]=3,[56630]=3,[56631]=3,[57386]=3,[57389]=3,[57390]=3,[57391]=3,[57392]=3,[57393]=3,[58604]=3,[58607]=3,[58608]=3,[58609]=3,[58610]=3,[58611]=3,[59881]=3,[59882]=3,[59883]=3,[59884]=3,[59885]=3,[59886]=3,[61193]=3,[61194]=3,[61195]=3,[61196]=3,[61197]=3,[61198]=3,[61676]=3,[61680]=3,[61681]=3,[61682]=3,[61683]=3,[61684]=3,[61685]=3,[61686]=3,[61687]=3,[61688]=3,[61689]=3,[61690]=3,[62758]=3,[62759]=3,[62760]=3,[62762]=3,[62764]=3,[62765]=3,[63900]=3,[64491]=3,[64492]=3,[64493]=3,[64494]=3,[64495]=3,[65220]=3,[75446]=3,[75447]=3,[75593]=3,[2947]=9,[3110]=9,[3716]=9,[4511]=9,[6307]=9,[6358]=9,[6360]=9,[7799]=9,[7800]=9,[7801]=9,[7802]=9,[7804]=9,[7805]=9,[7809]=9,[7810]=9,[7811]=9,[7812]=9,[7813]=9,[7814]=9,[7815]=9,[7816]=9,[7870]=9,[8316]=9,[8317]=9,[11762]=9,[11763]=9,[11766]=9,[11767]=9,[11770]=9,[11771]=9,[11774]=9,[11775]=9,[11778]=9,[11779]=9,[11780]=9,[11784]=9,[11785]=9,[17735]=9,[17750]=9,[17751]=9,[17752]=9,[17767]=9,[17850]=9,[17851]=9,[17852]=9,[17853]=9,[17854]=9,[19244]=9,[19438]=9,[19440]=9,[19441]=9,[19442]=9,[19443]=9,[19505]=9,[19647]=9,[19731]=9,[19734]=9,[19736]=9,[27267]=9,[27268]=9,[27269]=9,[27270]=9,[27271]=9,[27272]=9,[27273]=9,[27274]=9,[27275]=9,[27276]=9,[27277]=9,[30151]=9,[30153]=9,[30194]=9,[30195]=9,[30197]=9,[30198]=9,[30213]=9,[30219]=9,[30223]=9,[32233]=9,[32850]=9,[33698]=9,[33699]=9,[33700]=9,[33701]=9,[47964]=9,[47982]=9,[47983]=9,[47984]=9,[47985]=9,[47986]=9,[47987]=9,[47988]=9,[47989]=9,[47990]=9,[47991]=9,[47992]=9,[47993]=9,[47994]=9,[47995]=9,[47996]=9,[48011]=9,[54049]=9,[54050]=9,[54051]=9,[54052]=9,[54053]=9,[54278]=9,[54424]=9,[57564]=9,[57565]=9,[57566]=9,[57567]=9},
	["RACIAL"] = {[822]={{10},0},[2481]={{3},0},[5227]={{5},0},[6562]={{11},39},[7744]={{5},0},[20549]={{6},0},[20550]={{6},0},[20551]={{6},0},[20552]={{6},0},[20555]={{8},0},[20557]={{8},0},[20558]={{8},0},[20572]={{2},45},[20573]={{2},0},[20574]={{2},0},[20575]={{2},256},[20577]={{5},0},[20579]={{5},0},[20582]={{4},0},[20583]={{4},0},[20585]={{4},0},[20589]={{7},0},[20591]={{7},0},[20592]={{7},0},[20593]={{7},0},[20594]={{3},0},[20595]={{3},0},[20596]={{3},0},[20597]={{1},0},[20598]={{1},0},[20599]={{1},0},[20864]={{1},0},[25046]={{10},8},[26290]={{8},0},[26297]={{8},0},[28730]={{10},406},[28875]={{11},0},[28877]={{10},0},[28878]={{11},208},[28880]={{11},1},[33697]={{2},64},[33702]={{2},256},[50613]={{10},32},[54562]={{2},32},[58943]={{8},0},[58984]={{4},0},[58985]={{1},0},[59221]={{11},1},[59224]={{3},0},[59535]={{11},2},[59536]={{11},4},[59538]={{11},16},[59539]={{11},32},[59540]={{11},64},[59541]={{11},128},[59542]={{11},2},[59543]={{11},4},[59544]={{11},16},[59545]={{11},32},[59547]={{11},64},[59548]={{11},128},[59752]={{1},0},[65222]={{2},64}},
}


-- Adjustments to the imported cache data:
tinsert(Cache[3], 1, 75) -- Add "Auto Shot" to hunter.


local CacheIsReady = false

local PlayerSpells = {}
local ClassSpellLookup = {}
local NameCache


-- PUBLIC:

-- Contains a dictionary of spellIDs that are player spells.
function ClassSpellCache:GetSpellLookup()	
	if not CacheIsReady then
		error("The class spell cache hasn't been prepared yet.")
	end

	return ClassSpellLookup
end

-- Returns a dictionary of spellIDs that (should) belong to the current player.
function ClassSpellCache:GetPlayerSpells()
	if not next(PlayerSpells) then
		for k, v in pairs(Cache[pclass]) do
			PlayerSpells[k] = 1
		end
		for k, v in pairs(Cache.PET) do
			if v == pclass then
				PlayerSpells[k] = 1
			end
		end

		local _, race = UnitRace("player")


		for spellID, data in pairs(Cache.RACIAL) do
			local raceNames = data[1]
				local classReq = data[2]
			if TMW.tContains(raceNames, race) then
				if classReq ~= 0 then
					-- Verify that it is valid for this class.
					for classID = 1, TMW.GetMaxClassID() do
						local _, token = TMW.GetClassInfo(classID)
						if token == pclass and bit.band(bit.lshift(1, classID-1), classReq) > 0 then
							PlayerSpells[spellID] = 1
							break
						end
					end
				else
				PlayerSpells[spellID] = 1
			end
		end
	end
	end
	
	return PlayerSpells
end

--[[ Returns the main cache table. Structure:
Cache = {
	[classToken] = {
		[spellID] = 1,
	},
	PET = {
		[spellID] = classToken,
	},
	RACIAL = {
		[spellID] = {{raceName [,raceName2]...}, classReq},
		-- classReq is a bitfield, with enabled bits representing classIDs that the racial is good for. If 0, the spell has no restrictions.
	},
}
]]
function ClassSpellCache:GetCache()
	if not CacheIsReady then
		error("The class spell cache hasn't been prepared yet.")
	end

	return Cache
end

--[[ Returns a mapping of spell names to spellIDs. Structure:
NameCache = {
	[classToken] = {
		[spellName] = true,
	},
}
]]
function ClassSpellCache:GetNameCache()
	if not CacheIsReady then
		error("The class spell cache hasn't been prepared yet.")
	end
	
	if not NameCache then
		NameCache = {}
		for class, spells in pairs(Cache) do
			if class ~= "RACIAL" and class ~= "PET" then
				local c = {}
				NameCache[class] = c
				for spellID, value in pairs(spells) do
					local name = GetSpellInfo(spellID)
					if name then
						c[name:lower()] = true
					end
				end
			end
		end
	end

	return NameCache
end

local function getClassIconString(classToken)
	return "|TInterface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES:0:0:0:0:256:256:" ..
	(CLASS_ICON_TCOORDS[classToken][1]+.02)*256 .. ":" .. 
	(CLASS_ICON_TCOORDS[classToken][2]-.02)*256 .. ":" .. 
	(CLASS_ICON_TCOORDS[classToken][3]+.02)*256 .. ":" .. 
	(CLASS_ICON_TCOORDS[classToken][4]-.02)*256 .. "|t"
end

function GameTooltip:TMW_SetSpellByIDWithClassIcon(spellID)
	local ret = GameTooltip:SetSpellByID(spellID)

	local classToken = ClassSpellLookup[spellID]
	if classToken then
		local secondIcon = ""
		if classToken == "PET" then
			classToken = Cache.PET[spellID]
			local icon
			if classToken == "WARLOCK" then
				icon = "spell_shadow_metamorphosis"
			elseif classToken == "DEATHKNIGHT" then
				icon = "spell_deathknight_gnaw_ghoul"
			elseif classToken == "SHAMAN" then
				icon = "spell_fire_elemental_totem"
			else
				icon = "ability_hunter_mendpet"
			end
			secondIcon = " |TInterface\\Icons\\" .. icon .. ":0:0:0:0:32:32:2.24:29.76:2.24:29.76|t"
		elseif classToken == "RACIAL" then
			classToken = nil


			local data = Cache.RACIAL[spellID]
				-- There are class restrictions on the spell.
			local raceNames = data[1]
				local classReq = data[2]

			for _, raceName in pairs(raceNames) do
				secondIcon = secondIcon .. TMW:FormatAtlasString(TMW:GetRaceIconInfo(raceName), 0.07)
			end

				-- Find the classes that it is valid for.
			if classReq ~= 0 then
				for classID = 1, TMW.GetMaxClassID() do
					local name, token = TMW.GetClassInfo(classID)
					if token and bit.band(bit.lshift(1, classID-1), classReq) > 0 then
						secondIcon = secondIcon .. " " .. getClassIconString(token)
					end
				end
			end
		end

		local classIcon = classToken and getClassIconString(classToken) or ""

		GameTooltipTextLeft1:SetText( 
		classIcon ..
		secondIcon .. " " ..
		GameTooltipTextLeft1:GetText())
	end

	return ret
end

-- END PUBLIC





-- PRIVATE:

function ClassSpellCache:TMW_DB_INITIALIZED()
	
	for classID, spellList in pairs(CopyTable(Cache)) do
		if type(classID) == "number" then
			local name, token, classID = TMW.GetClassInfo(classID)
			local spellDict = {}
			for k, v in pairs(spellList) do
				spellDict[v] = true
			end

			Cache[token] = spellDict
			Cache[classID] = nil
		end
	end

	for spellID, classID in pairs(Cache.PET) do
		Cache.PET[spellID] = select(2, TMW.GetClassInfo(classID))
	end

	-- Translate raceIDs into their corresponding race names.
	for spellID, data in pairs(Cache.RACIAL) do
		for i, raceId in pairs(data[1]) do
			data[1][i] = RaceMap[raceId]
		end
	end
	
	-- Adds a spell's texture to the texture cache by name
	-- so that we can get textures by spell name much more frequently,
	-- reducing the usage of question mark and pocketwatch icons.
	local function AddID(id)
		if id > 0x7FFFFFFF then
			return
		end
		local name, _, tex = GetSpellInfo(id)
		name = TMW.strlowerCache[name]
		if name and not TMW.SpellTexturesMetaIndex[name] then
			TMW.SpellTexturesMetaIndex[name] = tex
		end
	end
	
	-- Spells of the user's class should be prioritized.
	for id in pairs(Cache[pclass]) do
		AddID(id)
	end
	
	-- Next comes spells of all other classes.
	for class, tbl in pairs(Cache) do
		if class ~= pclass and class ~= "PET" then
			for id in pairs(tbl) do
				AddID(id)
			end
		end
	end

	-- Pets are last because there are some overlapping names with class spells
	-- and we don't want to overwrite the textures for class spells with ones for pet spells.
	for id in pairs(Cache.PET) do
		AddID(id)
	end
	
	for class, tbl in pairs(Cache) do
		for id in pairs(tbl) do
			ClassSpellLookup[id] = class
		end
	end

	CacheIsReady = true
	
	return true -- Signal callback destruction
end
TMW:RegisterSelfDestructingCallback("TMW_DB_INITIALIZED", ClassSpellCache)


-- END PRIVATE
