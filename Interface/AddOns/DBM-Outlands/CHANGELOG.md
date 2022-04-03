# <DBM> Outlands

## [2.5.31](https://github.com/DeadlyBossMods/DBM-TBC-Classic/tree/2.5.31) (2022-03-30)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-TBC-Classic/compare/2.5.30...2.5.31) [Previous Releases](https://github.com/DeadlyBossMods/DBM-TBC-Classic/releases)

- Tag all the things  
- Add whirlwind to zul'jin  
- Re-add 2 used icons.  
- Cleanup some unused files; - Move spark.blp to DBM-StatusBarTimers - Remove LOA sound, as it exists in classic/bcc now - Remove default.blp from DBM-Core, as it's a duplicate of DBM-StatusBarTimers (and all references point there) - Removed unused arrow textures - Remove ? unused textures (CryptFiendBurrow, CryptFiendUnBurrow) - Remove redundant PvP textures (GuardTower, OrcTower)  
- Check warlock has an imp for Singe Magic dispell  
- Update commonlocal.ru.lua (#93)  
- NewTimer object that isn't auto localized also needs a way to inject group spellid  
- Update koKR (#92) Co-authored-by: Adam <MysticalOS@users.noreply.github.com>  
- Also error out if no function passes so author knows they are using it incorrectly.  
- Do not allow all callbacks to be unregistered by any mod that forgets to pass a valid function, that's just bad. now it should just error out if a function isn't passed and leave it at that. This resolves issues with one mod breaking other mods, Ref https://github.com/BigWigsMods/Transcriptor/pull/30 Also added more CL  
- that's what I get for copy and paste out of github's bad editor. it actually converted some of tabs to spaces but left some tabs? wtf github. make your editor less shit  
- Update localization.ru.lua (#91)  
- Fix https://github.com/DeadlyBossMods/DBM-TBC-Classic/issues/111  
- This is hacky, but it won't throw errors setting a custom name.  
- This should revert it to last stable point  
- fuck it, i'm going to bed  
- make luachec happy  
- Fix bad copy paste  
- not sure why this check is here, so remove it  
- Update koKR (BCC) (DeadlyBossMods#107) (#110)  
- Fix up Luacheck  
- Fix logic  
- no idea what spell is, since mods were lazy typed and poorly documented back then. it doesn't exist in classic tbc though so just remove it for now  
- bump alpha  
- prep new tag for retail  
- Fixed a bug with timer text on kagath  
- bump alphas  
