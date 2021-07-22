------------------------------------------------------

Fleecing Tip
by bazelle
https://www.wowinterface.com/downloads/info24891-FleecingTip.html
https://wow.curseforge.com/projects/fleecing-tip

------------------------------------------------------

This addon adds information to the tooltip to remind you that you could buy/obtain an item from a vendor/mob/quest instead.
Baa!...Stop being fleeced!

------------------------------------------------------

INSTALLATION: Put the FleecingTip folder into your World Of Warcraft/_retail_/Interface/AddOns folder and launch WoW.

FEATURES: Whenever you see a tradable item (on the Auction House, in loot, or wherever) that's also available from a vendor, the tooltip will provide a list of who sells it and where you can find them.

CHAT COMMANDS:
	/fleecingtip (or /ft) <command>
where <command> can be any of the following:
	help - Print this list.
	[item link] - Show info for an item in the chat window.
	status - Check current settings.
	money icon/short/long
	sound on/off
	show on/off
NEW:	config - Open options.

CAVEATS, KNOWN BUGS, ETC.: 
	- Many vendors that sell "interesting" items have a limited supply of such (which replenishes on a timer of a few hours or more).
	- If a vendor listed by Fleecing Tip doesn't have the item you're looking for, it may just have already been bought by another player. You'll have to stick around or check back again to be sure.
	- Fleecing Tip lists vendors of your faction (Alliance/Horde) and neutral vendors only.  Some items are only sold to one side, though they can be resold through the neutral Auction House.

------------------------------------------------------

Originally named 'Swindler Preventer'
Taken over from Thortok2000
Original work by Gazmik Fizzwidget
http://www.fizzwidget.com
Thanks for all there previous work!

------------------------------------------------------

VERSION HISTORY

------------------------------------------------------
Fleecing Tip (Classic Edition)

113.1770 - 20/07/2020
ERROR: Corrected missing reference to drop.

113.1672 - 06/03/2020
Use 'AddDoubleLine' to clean up tooltip.
Seperated Locations & Coordinates for easier access.
The 'Merge Table' now working as intended.
Removed sizing from money format.
Removed indent from text.
More clean up done.

Have fun!

113.1577 - 21/12/2019
Add 2 seasonal recipes.
Recolour note message.
TOC update.

Data Stats:
   - 565 Items.
   - 213 Alliance Vendors.
   - 183 Horde Vendors.
   - 362 Neutral Vendors.
   - 149 Drop entries.

Have fun!

113.1475 - 1/10/2019
Fixed FT_NewItemInfo not initializing on first run (Oops! Sorry).

Have fun!

113.1470 - 29/09/2019
Version label shown in options.
Incompatibility check (some people still installing the wrong versions).

Have fun!

113.1466 - 28/09/2019
Fix an error in DecomposeItemLink that may occur.
Fixed money format again.
Added all items and removed that are not available in classic.
No sound on equiped bags added.
Added coin displacement movement for UI's that use different fonts.
NEW: Option menu (at long last).
NOTE: The prices for items are from a data source and may not be 100% accurate.

Data Stats:
   - 563 Items.
   - 211 Alliance Vendors.
   - 181 Horde Vendors.
   - 362 Neutral Vendors.
   - 149 Drop entries.

Have fun!

113.1266 - 22/09/2019
Redone all items & vendors.
Added a new list for First Aid & Jewelry.
Reworked money system.
Black list a lot of the profession items (far to many).
If a new item found will use that data until new update.
Removed old FT_NewVendorInfo/FT_NewVendorLocation not needed.
There may be errors, but at the moment its running stable anough.
NOTE: The prices for items are from a data source and may not be 100% accurate.

Data Stats:
   - 432 Items.
   - 209 Alliance Vendors.
   - 179 Horde Vendors.
   - 363 Neutral Vendors.
   - 83 Drop entries.

Have fun!

113.1103 - 10/09/2019
Change to a new vendor & cost system because of some vendors having different prices.
Added a silent black list to some of the most used items (WIP).
Reworked on the locations of vendors (Classic vendors have different positions/names) and still more work still needed!
My new id system for instances/raids added (Classic dosn't seem to have any!...mm).
Chat commands working again.
Removed alot of unwanted code.
Reworked the data for quests.
NewVendorInfo & NewVendorLocation removed (WIP).
Error in FTUtils fixed.
Bags, Quivers, Pets, Mounts, Alchemy recipes, Blacksmithing recipes & Quest are mostly done (WIP).
Still alot to do and they may be some errors. I'm still working on it when I can, so please, please be patient.

Have fun!

113.1000 - 04/09/2019

First release. May contain errors!
Redone alot of work on vendors and there locations (new iD's for classic).
Introduced a new cost value for each vendor (Some vendors have different prices...Auh!).
Only Bags, Mounts & new Quivers are available at the moment.
Still have alot of items to go through and change, so have disabled the slash commands until more stable version.

Have fun!

