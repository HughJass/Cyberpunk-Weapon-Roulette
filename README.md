# Cyberpunk-Weapon-Roulette

A mod by Hugh Jass and tommyY  
  
How to install:  
1. Make sure you have Cyberpunk Engine Tweaks updated with the latest version  
2. Download the mod zip file  
3. Extract the folder to "\Cyberpunk 2077\bin\x64\plugins\cyber_engine_tweaks\mods"  
4. UI overlay can be toggled with a hotkey that's assigned in the CET console overlay. Opens/closes with CET by default and stays active once it is started.  



How to use:  
1. Under the settings tab you can change the following:  
   - Weapon Stats: A multiplier on the gun stats to lower its damage. Lower settings would simulate playing on harder difficulty settings. Default set to 80.  
   - Timer: The number of seconds between randomized guns being assigned as the active weapon. Default is set to 30 seconds.  
   - Combat Reset: Enables a reset on the progress bar after every combat ends, leaving you with the last gun used to start the next combat. Default set to enabled.  
   - Rarity: Specify the rarity to be forcefully applied to every gun that spawns. Random is a selectable and the default option.  
   - Gun Types: Specify the type of weapons to include in the pool (Power, Tech, Smart, Blunt, Blade). Default set to all weapon types.  
2. Click update. Without updating, all of the default settings will be applied on start.  
3. Under the main tab, click START and the mod will begin by assigning a first weapon.  
4. The randomizing process is only initiated while in combat, and the timer for when a new weapon will spawn is tracked and visualized as a progress bar. Hitting reset will revert the UI to normal (tabs being visible).  
5. The timer will continue to run even while paused in the game menu (character screen, inventory, etc). The timer will pause if the game is paused with the Escape menu (Save/Load screen)  
  
Known issues:  
1. Attachments/Mods currently unavailable. Can't seem to work around the game crashing when trying to equip any mods with a function.  
2. Eventually would like to minimize the UI's visibility while active so it's less intrusive.  
3. The stats on the guns are hardcoded integers and scale with your level and modified by the weapon stats slider. Eventually we want it all to be customizable and also reflect actual stats from normally upgraded weapons of the relevant types (Example: Headshot multipliers never get that high on Shotguns, but the hardcoding forces it to take on values that you would typically see on Rifles).  
  
  
Feedback:  
The biggest priority is to make the sequence from start to finish feel as smooth as possible. Feedback that can describe situations where this is not the case would be very helpful, along with general feedback about anything to make the use of this mod more exciting.

CPStyling is under MIT license. https://github.com/Nats-ji/CPStyling.lua
