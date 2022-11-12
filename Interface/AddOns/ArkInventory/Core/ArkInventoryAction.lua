local _G = _G
local select = _G.select
local pairs = _G.pairs
local ipairs = _G.ipairs
local string = _G.string
local type = _G.type
local error = _G.error
local table = _G.table



ArkInventory.Action.Vendor = { }
ArkInventory.Action.Mail = { }



local junk_addons = {"Scrap","SellJunk","ReagentRestocker","Peddler"}
function ArkInventory.Action.Vendor.ProcessCheck( name )
	for _, a in pairs( junk_addons ) do
		--ArkInventory.Output( "checking ", a )
		if IsAddOnLoaded( a ) and _G[a] then
			ArkInventory.OutputWarning( string.format( ArkInventory.Localise["CONFIG_ACTION_VENDOR_PROCESSING_DISABLED_DESC"], a ) )
			return false, a
		end
	end
	return true
end

function ArkInventory.Action.Vendor.Check( i, codex, manual )
	
	local isMatch = false
	local vendorPrice = -1
	
	if i and i.h then
		
		local info = i.info or ArkInventory.GetObjectInfo( i.h )
		
		if info.ready and info.id then
			
			if IsAddOnLoaded( "Scrap" ) and Scrap then
				
				if Scrap:IsJunk( info.id ) then
					isMatch = true
				end
				
			elseif IsAddOnLoaded( "SellJunk" ) and SellJunk then
				
				if ( info.q == 0 and not SellJunk:isException( i.h ) ) or ( info.q ~= 0 and SellJunk:isException( i.h ) ) then
					isMatch = true
				end
				
			elseif IsAddOnLoaded( "ReagentRestocker" ) and ReagentRestocker then
				
				if ReagentRestocker:isToBeSold( info.id ) then
					isMatch = true
				end
				
			elseif IsAddOnLoaded( "Peddler" ) and PeddlerAPI then
				
				if PeddlerAPI.itemIsToBeSold( info.id ) then
					isMatch = true
				end
				
			elseif codex then
				
				local cat_id = ArkInventory.ItemCategoryGet( i )
				local cat_type, cat_num = ArkInventory.CategoryIdSplit( cat_id )
				local catset = codex.catset.ca[cat_type][cat_num]
				if i.q <= ArkInventory.db.option.junk.raritycutoff then
					if catset.action.t == ArkInventory.Const.ENUM.CATEGORY.ACTION.TYPE.VENDOR then
						if catset.action.w == ArkInventory.Const.ENUM.CATEGORY.ACTION.WHEN.AUTO then
							isMatch = true
						elseif catset.action.w == ArkInventory.Const.ENUM.CATEGORY.ACTION.WHEN.MANUAL and manual then
							isMatch = true
						end
					end
				end
				
			end
			
		end
		
		if isMatch then
			vendorPrice = info.vendorprice or vendorPrice
		end
		
	end
	
	return isMatch, vendorPrice
	
end

function ArkInventory.Action.Vendor.Iterate( manual )
	
	local loc_id = ArkInventory.Const.Location.Bag
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	local bag_id = 1
	local slot_id = 0
	
	local player = ArkInventory.GetPlayerStorage( nil, loc_id )
	local i
	
	local bags = ArkInventory.Global.Location[loc_id].Bags
	local blizzard_id = bags[bag_id]
	local numslots = ArkInventory.CrossClient.GetContainerNumSlots( blizzard_id )
	
	local _, isJunk, isLocked, itemCount, itemLink, vendorPrice
	
	
	return function( )
		
		isJunk = false
		itemLink = nil
		itemCount = 0
		vendorPrice = -1
		
		while not isJunk do
			
			if slot_id < numslots then
				slot_id = slot_id + 1
			elseif bag_id < #bags then
				bag_id = bag_id + 1
				blizzard_id = bags[bag_id]
				numslots = ArkInventory.CrossClient.GetContainerNumSlots( blizzard_id )
				slot_id = 1
			else
				blizzard_id = nil
				slot_id = nil
				itemCount = nil
				itemLink = nil
				vendorPrice = -1
				break
			end
			
			local itemInfo = ArkInventory.CrossClient.GetContainerItemInfo( blizzard_id, slot_id )
			itemCount = itemInfo.stackCount
			isLocked = itemInfo.isLocked
			itemLink = itemInfo.hyperlink
			
			if itemCount and not isLocked and itemLink then
				isJunk, vendorPrice = ArkInventory.Action.Vendor.Check( player.data.location[loc_id].bag[bag_id].slot[slot_id], codex, manual )
			end
			
		end
		
		--ArkInventory.Output( itemLink, " / ", itemCount, " / ", vendorPrice )
		return blizzard_id, slot_id, itemLink, itemCount, vendorPrice
		
	end
	
end

local function ActionVendorDestroy( manual )
	
	if not manual then return end
	
	ArkInventory.Global.Action.Vendor.destroyed = 0
	
	if not ArkInventory.db.option.junk.delete then
		return
	end
		
	for blizzard_id, slot_id, itemLink, itemCount, vendorPrice in ArkInventory.Action.Vendor.Iterate( manual ) do
		
		if vendorPrice == 0 then
			
			if ArkInventory.db.option.junk.list then
				if ArkInventory.Global.Action.Vendor.destroyed == 0 then
					ArkInventory.Output( string.format( ArkInventory.Localise["CONFIG_ACTION_VENDOR_LIST_DESTROY_DESC"], itemCount, itemLink ) )
				end
			end
			
			if not ArkInventory.db.option.junk.test then
				if ArkInventory.Global.Action.Vendor.destroyed == 0 then
					
					if not ArkInventory.db.option.junk.combat and InCombatLockdown( ) then
						ArkInventory.OutputWarning( ArkInventory.Localise["CONFIG_ACTION_VENDOR_SELL_BINDING"], " aborted, you are in combat" )
						break
					end
					
					ArkInventory.CrossClient.PickupContainerItem( blizzard_id, slot_id )
					DeleteCursorItem( )
					-- protected after 9.0.2 so can no longer delete items automatically, using a keybinding instead, but only one item can be destroyed per keypress
					-- must also run non threaded or it will fail due to no longer being the same execution path that was launched from the keybinding
				end
			end
			
			ArkInventory.Global.Action.Vendor.destroyed = ArkInventory.Global.Action.Vendor.destroyed + 1
			
		end
		
	end
	
	if ArkInventory.Global.Action.Vendor.destroyed > 1 then
		ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, string.format( ArkInventory.Localise["CONFIG_ACTION_VENDOR_LIST_DESTROY_LIMIT"], ArkInventory.Global.Action.Vendor.destroyed - 1 ) )
	end
	
	if ArkInventory.db.option.junk.test then
		if ArkInventory.Global.Action.Vendor.destroyed > 0 then
			ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, ArkInventory.Localise["CONFIG_ACTION_VENDOR_TESTMODE_ALERT_DESTROYED"] )
		end
	end
	
	ArkInventory.Global.Action.Vendor.destroyed = 0
	
end

local function ActionVendorSell_Threaded( thread_id, manual )
	
	if not ArkInventory.Global.Mode.Merchant then
		--ArkInventory.Output( "ABORTED (NOT AT MERCHANT)" )
		return
	end
	
--	ArkInventory.Output( "start amount ", GetMoney( ) )
	ArkInventory.Global.Action.Vendor.money = GetMoney( )
	
	local limit = ( ArkInventory.db.option.junk.limit and BUYBACK_ITEMS_PER_PAGE ) or 0
	
	for blizzard_id, slot_id, itemLink, itemCount, vendorPrice in ArkInventory.Action.Vendor.Iterate( manual ) do
		
		if vendorPrice == 0 then
			
			ArkInventory.Global.Action.Vendor.destroyed = ArkInventory.Global.Action.Vendor.destroyed + 1
			
		elseif vendorPrice > 0 then
			
			ArkInventory.Global.Action.Vendor.sold = ArkInventory.Global.Action.Vendor.sold + 1
			
			if limit > 0 and ArkInventory.Global.Action.Vendor.sold > limit then
				-- limited to buyback page
				ArkInventory.Global.Action.Vendor.sold = limit
				ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, string.format( ArkInventory.Localise["CONFIG_ACTION_VENDOR_NOTIFY_LIMIT"], limit ) )
				return
			end
			
			if ArkInventory.db.option.junk.list then
				ArkInventory.Output( string.format( ArkInventory.Localise["CONFIG_ACTION_VENDOR_LIST_SELL_DESC"], itemCount, itemLink, ArkInventory.MoneyText( itemCount * vendorPrice, true ) ) )
			end
			
			if not ArkInventory.db.option.junk.test then
				if ArkInventory.Global.Mode.Merchant then
					
					if not ArkInventory.db.option.junk.combat and InCombatLockdown( ) then
						ArkInventory.OutputWarning( ArkInventory.Localise["CONFIG_ACTION_VENDOR_SELL_BINDING"], " aborted, you are in combat" )
						break
					end
					
					-- this will sometimes fail, without any notifcation, so you cant just add up the values as you go
					-- GetMoney doesnt update in real time so also cannot be used here
					-- next best thing, record how much money we had beforehand and how much we have at the next PLAYER_MONEY, then output it there
					UseContainerItem( blizzard_id, slot_id )
					ArkInventory.ThreadYield( thread_id )
					
				end
			end
			
		end
		
	end
	
	
	if ArkInventory.db.option.junk.test then
		if ArkInventory.Global.Action.Vendor.sold > 0 then
			ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, ArkInventory.Localise["CONFIG_ACTION_VENDOR_TESTMODE_ALERT_SOLD"] )
		end
	end
	
	if not manual then
		if ArkInventory.Global.Action.Vendor.destroyed > 0 then
			ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, string.format( ArkInventory.Localise["CONFIG_ACTION_VENDOR_SELL_CANDESTROY"], ArkInventory.Global.Action.Vendor.destroyed ) )
		end
	end
	
	ArkInventory.Global.Action.Vendor.destroyed = 0
	
	
	
	--ArkInventory.Output( "tried to sell ", ArkInventory.Global.Action.Vendor.sold, " items" )
	
	-- notifcation is at EVENT_ARKINV_PLAYER_MONEY, call it in case it tripped before the final yield came back
--	ArkInventory:SendMessage( "EVENT_ARKINV_PLAYER_MONEY_BUCKET", "JUNK" )
	
end

function ArkInventory.Action.Vendor.Sell( manual )
	
	if not ArkInventory.Global.Action.Vendor.process then return end
	
	if not manual and not ArkInventory.db.option.junk.sell then
		return
	end
	
	if not ArkInventory.Global.Thread.Use then
		ArkInventory.OutputWarning( ArkInventory.Localise["CONFIG_ACTION_VENDOR_SELL_BINDING"], " aborted, as threads are currently disabled." )
		return
	end
	
	if manual then
		ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, string.format( ArkInventory.Localise["CONFIG_ACTION_TYPE"], ArkInventory.Localise["CONFIG_ACTION_VENDOR_SELL_BINDING"], ArkInventory.Localise["MANUAL"] ) )
	else
		if ArkInventory.Global.Action.Vendor.running then
			ArkInventory.OutputWarning( ArkInventory.Localise["CONFIG_ACTION_VENDOR_SELL_BINDING"], " is already running, please wait" )
			return
		else
			ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, string.format( ArkInventory.Localise["CONFIG_ACTION_TYPE"], ArkInventory.Localise["CONFIG_ACTION_VENDOR_SELL_BINDING"], ArkInventory.Localise["AUTOMATIC"] ) )
		end
	end
	
	ActionVendorDestroy( manual )
	
	ArkInventory.Global.Action.Vendor.sold = 0
	ArkInventory.Global.Action.Vendor.money = 0
	
	local thread_id = ArkInventory.Global.Thread.Format.JunkSell
	
	local tf = function ( )
		ArkInventory.Global.Action.Vendor.running = true
		ActionVendorSell_Threaded( thread_id, manual )
		ArkInventory.Global.Action.Vendor.running = false
	end
	
	ArkInventory.ThreadStart( thread_id, tf )
	
end



function ArkInventory.Action.Mail.Check( i, codex, manual )
	
	local isMatch = false
	
	if i and i.h then
		
		local info = i.info or ArkInventory.GetObjectInfo( i.h )
		
		if info.ready and info.id then
			
			if codex then
				
				local cat_id = ArkInventory.ItemCategoryGet( i )
				local cat_type, cat_num = ArkInventory.CategoryIdSplit( cat_id )
				if codex.catset.ca[cat_type][cat_num].action.t == ArkInventory.Const.ENUM.CATEGORY.ACTION.TYPE.MAIL then
					if codex.catset.ca[cat_type][cat_num].action.w == ArkInventory.Const.ENUM.CATEGORY.ACTION.WHEN.AUTO then
						isMatch = true
					elseif manual and codex.catset.ca[cat_type][cat_num].action.w == ArkInventory.Const.ENUM.CATEGORY.ACTION.WHEN.MANUAL then
						isMatch = true
					end
				end
				
			end
			
		end
		
	end
	
	return isMatch
	
end

function ArkInventory.Action.Mail.Iterate( manual )
	
	local loc_id = ArkInventory.Const.Location.Bag
	local codex = ArkInventory.GetLocationCodex( loc_id )
	
	local bag_id = 1
	local slot_id = 0
	
	local player = ArkInventory.GetPlayerStorage( nil, loc_id )
	local i
	
	local bags = ArkInventory.Global.Location[loc_id].Bags
	local blizzard_id = bags[bag_id]
	local numslots = ArkInventory.CrossClient.GetContainerNumSlots( blizzard_id )
	
	local _, isMatch, isLocked, itemCount, itemLink
	
	
	return function( )
		
		isMatch = false
		itemLink = nil
		itemCount = 0
		
		while not isMatch do
			
			if slot_id < numslots then
				slot_id = slot_id + 1
			elseif bag_id < #bags then
				bag_id = bag_id + 1
				blizzard_id = bags[bag_id]
				numslots = ArkInventory.CrossClient.GetContainerNumSlots( blizzard_id )
				slot_id = 1
			else
				blizzard_id = nil
				slot_id = nil
				itemCount = nil
				itemLink = nil
				vendorPrice = -1
				break
			end
			
			local itemInfo = ArkInventory.CrossClient.GetContainerItemInfo( blizzard_id, slot_id )
			itemCount = itemInfo.stackCount
			isLocked = itemInfo.isLocked
			itemLink = itemInfo.hyperlink
			
			if itemCount and not isLocked and itemLink then
				isMatch = ArkInventory.Action.Mail.Check( player.data.location[loc_id].bag[bag_id].slot[slot_id], codex, manual )
			end
			
		end
		
		--ArkInventory.Output( itemLink, " / ", itemCount )
		return blizzard_id, slot_id, itemLink, itemCount
		
	end
	
end

local function ActionMailSend_Threaded( thread_id, manual )
	
	if not ArkInventory.Global.Mode.Mailbox then
		--ArkInventory.Output( "ABORTED (NOT AT MAILBOX)" )
		return
	end
	
	local count = 0
	local open = false
	local redo = false
	local limit = 12
	
	for blizzard_id, slot_id, itemLink, itemCount in ArkInventory.Action.Mail.Iterate( manual ) do
		
		if ArkInventory.Global.Mode.Mailbox then
			
			-- if not open then create new mail
			
			-- if count >= limit then send this batch and redo
			-- ArkInventory.ThreadYield( thread_id )
			
			UseContainerItem( blizzard_id, slot_id )
			ArkInventory.ThreadYield( thread_id )
			
		end
		
	end
	
	-- if count > 0 and count < limit then send
	-- ArkInventory.ThreadYield( thread_id )
	
	-- if redo then return ActionMailSend_Threaded( thread_id, manual )
	
end

function ArkInventory.Action.Mail.Send( manual )
	
	if not ArkInventory.Global.Thread.Use then
		ArkInventory.OutputWarning( ArkInventory.Localise["CONFIG_ACTION_MAIL_SEND"], " aborted, as threads are currently disabled." )
		return
	end
	
	if manual then
		ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, string.format( ArkInventory.Localise["CONFIG_ACTION_TYPE"], ArkInventory.Localise["CONFIG_ACTION_MAIL_SEND"], ArkInventory.Localise["MANUAL"] ) )
	else
		if ArkInventory.Global.Action.Mail.running then
			ArkInventory.OutputWarning( ArkInventory.Localise["CONFIG_ACTION_MAIL_SEND"], " is already running, please wait" )
			return
		else
			ArkInventory.Output( LIGHTYELLOW_FONT_COLOR_CODE, string.format( ArkInventory.Localise["CONFIG_ACTION_TYPE"], ArkInventory.Localise["CONFIG_ACTION_MAIL_SEND"], ArkInventory.Localise["AUTOMATIC"] ) )
		end
	end
	
	local thread_id = ArkInventory.Global.Thread.Format.MailSend
	
	local tf = function ( )
		ArkInventory.Global.Action.Mail.running = true
		ActionMailSend_Threaded( thread_id, manual )
		ArkInventory.Global.Action.Mail.running = false
	end
	
	ArkInventory.ThreadStart( thread_id, tf )
	
end
