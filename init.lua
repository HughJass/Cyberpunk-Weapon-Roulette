--SPDX-License-Identifier: GPL-2.0
--Copyright 2021 Hugh Jass and tommyY

CPS = require ("CPStyling")
print("CPStyling.lua loaded")
theme = CPS.theme
color = CPS.color

gunTypes = {
	[1] = {
		"Items.Preset_Butchers_Knife_Default",
		"Items.Preset_Chefs_Knife_Default",
		"Items.Preset_Katana_Arasaka_2020",
		"Items.Preset_Katana_Cocktail",
		"Items.Preset_Katana_Default",
		"Items.Preset_Katana_GoG",
		"Items.Preset_Katana_Hiromi",
		"Items.Preset_Katana_Military",
		"Items.Preset_Katana_Neon",
		"Items.Preset_Katana_Saburo",
		"Items.Preset_Katana_Surgeon",
		"Items.Preset_Katana_Takemura",
		"Items.Preset_Katana_Training",
		"Items.Preset_Knife_Default",
		"Items.Preset_Knife_Military",
		"Items.Preset_Knife_Stinger",
		"Items.Preset_Kukri_Default",
		"Items.Preset_Kukri_Voodoo",
		"Items.Preset_Machete_Default",
		"Items.Preset_Machete_Maelstrom",
		"Items.Preset_Machete_Valentinos",
		"Items.Preset_Tanto_Default"
	},
	[2] = {
		"Items.Preset_Baseball_Bat_Default",
		"Items.Preset_Baseball_Bat_Denny",
		"Items.Preset_Baton_Alpha",
		"Items.Preset_Baton_Beta",
		"Items.Preset_Baton_Gamma",
		"Items.Preset_Baton_Tinker_Bell",
		"Items.Preset_Cane_Fingers",
		"Items.Preset_Crowbar_Default",
		"Items.Preset_Dildo_Stout",
		"Items.Preset_Hammer_Default",
		"Items.Preset_Hammer_Sasquatch",
		"Items.Preset_Iron_Pipe_Default",
		"Items.Preset_Kanabo_Default",
		"Items.Preset_Knuckles_Default",
		"Items.Preset_Knuckles_Golden",
		"Items.Preset_Knuckles_Military",
		"Items.Preset_Knuckles_Pimp",
		"Items.Preset_Pipe_Wrench_Default",
		"Items.Preset_Shovel_Caretaker",
		"Items.Preset_Tire_Iron_Default",
		"Items.Preset_Tomahawk_Default"
	},
	[3] = {
		"Items.Preset_Ajax_Default",
		"Items.Preset_Ajax_Military",
		"Items.Preset_Ajax_Moron",
		"Items.Preset_Ajax_Neon",
		"Items.Preset_Ajax_Pimp",
		"Items.Preset_Ajax_Training",
		"Items.Preset_Base_Copperhead",
		"Items.Preset_Base_Lexington",
		"Items.Preset_Base_Masamune",
		"Items.Preset_Carnage_Default",
		"Items.Preset_Carnage_Military",
		"Items.Preset_Carnage_Mox",
		"Items.Preset_Carnage_Neon",
		"Items.Preset_Carnage_Pimp",
		"Items.Preset_Copperhead_Default",
		"Items.Preset_Copperhead_Genesis",
		"Items.Preset_Copperhead_Military",
		"Items.Preset_Copperhead_Neon",
		"Items.Preset_Copperhead_Pimp",
		"Items.Preset_Crusher_Default",
		"Items.Preset_Crusher_Military",
		"Items.Preset_Crusher_Neon",
		"Items.Preset_Crusher_Pimp",
		"Items.Preset_Defender_Default",
		"Items.Preset_Defender_Military",
		"Items.Preset_Defender_Neon",
		"Items.Preset_Defender_Pimp",
		"Items.Preset_Grad_Buck",
		"Items.Preset_Grad_Default",
		"Items.Preset_Grad_Military",
		"Items.Preset_Grad_Neon",
		"Items.Preset_Grad_Panam",
		"Items.Preset_Grad_Pimp",
		"Items.Preset_HMG_Default",
		"Items.Preset_Igla_Default",
		"Items.Preset_Igla_Military",
		"Items.Preset_Igla_Neon",
		"Items.Preset_Igla_Pimp",
		"Items.Preset_Igla_Sovereign",
		"Items.Preset_Lexington_DEBUG",
		"Items.Preset_Lexington_Default",
		"Items.Preset_Lexington_Military",
		"Items.Preset_Lexington_Neon",
		"Items.Preset_Lexington_Pimp",
		"Items.Preset_Lexington_Toygun",
		"Items.Preset_Lexington_Wilson",
		"Items.Preset_Liberty_Default",
		"Items.Preset_Liberty_Dex",
		"Items.Preset_Liberty_Military",
		"Items.Preset_Liberty_Neon",
		"Items.Preset_Liberty_Pimp",
		"Items.Preset_Liberty_Rogue",
		"Items.Preset_Liberty_Yorinobu",
		"Items.Preset_Masamune_Arasaka_2020",
		"Items.Preset_Masamune_Default",
		"Items.Preset_Masamune_Flashlight",
		"Items.Preset_Masamune_Military",
		"Items.Preset_Masamune_Neon",
		"Items.Preset_Masamune_Pimp",
		"Items.Preset_Masamune_Rogue",
		"Items.Preset_Masamune_Scope",
		"Items.Preset_Masamune_Trauma",
		"Items.Preset_MQ008_Nova",
		"Items.Preset_Nova_Default",
		"Items.Preset_Nova_Doom_Doom",
		"Items.Preset_Nova_Military",
		"Items.Preset_Nova_Neon",
		"Items.Preset_Nova_Pimp",
		"Items.Preset_Nova_Q000_Nomad",
		"Items.Preset_Nue_Arasaka",
		"Items.Preset_Nue_Arasaka_2020",
		"Items.Preset_Nue_Default",
		"Items.Preset_Nue_Jackie",
		"Items.Preset_Nue_Jackie",
		"Items.Preset_Nue_Maiko",
		"Items.Preset_Nue_Military",
		"Items.Preset_Nue_Neon",
		"Items.Preset_Nue_Pimp",
		"Items.Preset_Overture_Cassidy",
		"Items.Preset_Overture_Default",
		"Items.Preset_Overture_Default_E",
		"Items.Preset_Overture_Default_L",
		"Items.Preset_Overture_Default_R",
		"Items.Preset_Overture_Default_U",
		"Items.Preset_Overture_Kerry",
		"Items.Preset_Overture_Legendary",
		"Items.Preset_Overture_Military",
		"Items.Preset_Overture_Neon",
		"Items.Preset_Overture_Pimp",
		"Items.Preset_Overture_River",
		"Items.Preset_Pulsar_Buzzsaw",
		"Items.Preset_Pulsar_Default",
		"Items.Preset_Pulsar_Military",
		"Items.Preset_Pulsar_Neon",
		"Items.Preset_Pulsar_Pimp",
		"Items.Preset_Q001_Lexington",
		"Items.Preset_Saratoga_Arasaka_2020",
		"Items.Preset_Saratoga_Default",
		"Items.Preset_Saratoga_Maelstrom",
		"Items.Preset_Saratoga_Military",
		"Items.Preset_Saratoga_Neon",
		"Items.Preset_Saratoga_Pimp",
		"Items.Preset_Saratoga_Raffen",
		"Items.Preset_Silverhand_3516",
		"Items.Preset_Sor22_Default",
		"Items.Preset_Sor22_Military",
		"Items.Preset_Sor22_Neon",
		"Items.Preset_Sor22_Pimp",
		"Items.Preset_Tactician_Default",
		"Items.Preset_Tactician_Headsman",
		"Items.Preset_Tactician_Military",
		"Items.Preset_Tactician_Neon",
		"Items.Preset_Tactician_Pimp",
		"Items.Preset_Testera_Default",
		"Items.Preset_Testera_Neon",
		"Items.Preset_Testera_Pimp",
		"Items.Preset_Unity_Default",
		"Items.Preset_Unity_Military",
		"Items.Preset_Unity_Neon",
		"Items.Preset_Unity_Pimp",
		"Items.Preset_V_Unity"
	},
	[4] = {
		"Items.Preset_Ashura_Default",
		"Items.Preset_Ashura_Military",
		"Items.Preset_Ashura_Neon",
		"Items.Preset_Ashura_Pimp",
		"Items.Preset_Chao_Default",
		"Items.Preset_Chao_Military",
		"Items.Preset_Chao_Neon",
		"Items.Preset_Chao_Pimp",
		"Items.Preset_Dian_Default",
		"Items.Preset_Dian_Default",
		"Items.Preset_Dian_Military",
		"Items.Preset_Dian_Neon",
		"Items.Preset_Dian_Pimp",
		"Items.Preset_Dian_Trauma",
		"Items.Preset_Dian_Yinglong",
		"Items.Preset_Palica_Default",
		"Items.Preset_Palica_Military",
		"Items.Preset_Palica_Neon",
		"Items.Preset_Palica_Pimp",
		"Items.Preset_Shingen_Default",
		"Items.Preset_Shingen_Military",
		"Items.Preset_Shingen_Neon",
		"Items.Preset_Shingen_Pimp",
		"Items.Preset_Shingen_Prototype",
		"Items.Preset_Sidewinder_Default",
		"Items.Preset_Sidewinder_Divided",
		"Items.Preset_Sidewinder_Military",
		"Items.Preset_Sidewinder_Neon",
		"Items.Preset_Sidewinder_Pimp",
		"Items.Preset_Yukimura_Default",
		"Items.Preset_Yukimura_Kiji",
		"Items.Preset_Yukimura_Military",
		"Items.Preset_Yukimura_Neon",
		"Items.Preset_Yukimura_Pimp",
		"Items.Preset_Yukimura_Skippy",
		"Items.Preset_Zhuo_Default",
		"Items.Preset_Zhuo_Eight_Star",
		"Items.Preset_Zhuo_Military",
		"Items.Preset_Zhuo_Neon",
		"Items.Preset_Zhuo_Pimp",
		"Items.Preset_Zhuo_Traum"
	},
	[5] = {
		"Items.Preset_Achilles_Default",
		"Items.Preset_Achilles_Military",
		"Items.Preset_Achilles_Nash",
		"Items.Preset_Achilles_Neon",
		"Items.Preset_Achilles_Pimp",
		"Items.Preset_Achilles_Tiny_Mike",
		"Items.Preset_Burya_Comrade",
		"Items.Preset_Burya_Default",
		"Items.Preset_Burya_Military",
		"Items.Preset_Burya_Neon",
		"Items.Preset_Burya_Pimp",
		"Items.Preset_Kenshin_Default",
		"Items.Preset_Kenshin_Frank",
		"Items.Preset_Kenshin_Military",
		"Items.Preset_Kenshin_MQ041",
		"Items.Preset_Kenshin_Neon",
		"Items.Preset_Kenshin_Pimp",
		"Items.Preset_Kenshin_Royce",
		"Items.Preset_Kenshin_Takemura",
		"Items.Preset_Nekomata_Breakthrough",
		"Items.Preset_Nekomata_Default",
		"Items.Preset_Nekomata_Military",
		"Items.Preset_Nekomata_Neon",
		"Items.Preset_Nekomata_Pimp",
		"Items.Preset_Omaha_Default",
		"Items.Preset_Omaha_Military",
		"Items.Preset_Omaha_Neon",
		"Items.Preset_Omaha_Pimp",
		"Items.Preset_Omaha_Suzie",
		"Items.Preset_Quasar_Default",
		"Items.Preset_Quasar_Military",
		"Items.Preset_Quasar_Neon",
		"Items.Preset_Quasar_Pimp",
		"Items.Preset_Satara_Default",
		"Items.Preset_Satara_Military",
		"Items.Preset_Satara_Neon",
		"Items.Preset_Satara_Pimp"
	}
}

gunList = {}

showUI = true

registerHotkey("ToggleUI", "Toggle Weapon Roulette UI", function()
    showUI = not showUI
end)

registerForEvent("onOverlayOpen", function()
    showUI = true
end)

registerForEvent("onOverlayClose", function()
    showUI = false
end)

function getSystems()
    player = Game.GetPlayer()
    ts = Game.GetTransactionSystem()
    ss = Game.GetStatsSystem()
    ssc = Game.GetScriptableSystemsContainer()
    es = ssc:Get(CName.new("EquipmentSystem"))
    cs = ssc:Get(CName.new("CraftingSystem"))
    espd = es:GetPlayerData(player)
end

registerForEvent("onInit", function ()
    startTime = 0
    startDay = 0
    startHour = 0
    startMinute = 0
    startSecond = 0

    timeElapsed = 0
    elapsedDay = 0
    elapsedHour = 0
    elapsedMinute = 0
    elapsedSecond = 0
    Time = 0

    updateTimerTick = 15 -- in seconds
    timerDelta = 0
    playerLevel = 0
    previousWeap = 0
    currentIndex = 0
    interval = 30
    intervalModifier = 0
    spawnedWeapon = false
    oldWeap = nil
    initiatedMod = false
    startCombat = false
    startTimer = false
    gaveWeapon = false
    removedWeapon = false
    startMod = false
    wWidth = 0
    wHeight = 0
    qa_tracker = 0

	checkedBlade = 1
	checkedBlunt = 1
	checkedPower = 1
	checkedSmart = 1
	checkedTech = 1

    weaponsPower = true
    weaponsTech = true
    weaponsSmart = true
    weaponsBlunt = true
    weaponsBlade = true
    weaponsActivated = {
    	weaponsBlade,
    	weaponsBlunt,
    	weaponsPower,
    	weaponsSmart,
    	weaponsTech
    }
    listCreated = false

    rarityModifier = 5
    raritySelection = 1

    
    firstGunSpawned = false

    tuningModifier = 80
    tuningSettings = 0
    fillWeaponList()
end)

function removeWeap()
    local currentWeapon = espd:GetActiveWeapon()
    if currentWeapon.id.hash == 0 then
        return false
    end
    ts:RemoveItem(player, currentWeapon, 1)
    espd:ClearAllWeaponSlots()
    return true
end

function giveWeap()
    espd:ClearAllWeaponSlots()
    local r = math.random(#gunList)
    local w = gunList[r]
    Game.EquipItemToHand(w)
end

function upgradeWeapon()
    espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32']
    local playerLValue = ss:GetStatValue(player:GetEntityID(), 'Level')
    local playerPLValue = ss:GetStatValue(player:GetEntityID(), 'PowerLevel')

    local slots = {
        Weapon = 3
    }

    for k,v in pairs(slots) do
        for i=1,v do
            local itemid = espd:GetItemInEquipSlot2(k, i - 1)
            if itemid.tdbid.hash ~= 0 then 
                itemdata = ts:GetItemData(player, itemid)
                local statObj = itemdata:GetStatsObjectID()
                ss:RemoveAllModifiers(statObj, 'ItemLevel', true)
                ss:RemoveAllModifiers(statObj, 'CritChance', true)
                ss:RemoveAllModifiers(statObj, 'CritDamage', true)
                ss:RemoveAllModifiers(statObj, 'HeadshotDamageMultiplier', true)
                local statPLevel = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('ItemLevel', 'Additive', playerPLValue * 10 * (tuningModifier / 100))
                local statCritChance = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('CritChance', 'Additive', 35 * (playerLValue / 50) * (tuningModifier / 100))
                local statCritDamage = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('CritDamage', 'Additive', 75 * (playerLValue / 50) * (tuningModifier / 100))
                local statHeadshot = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('HeadshotDamageMultiplier', 'Additive', 1.5 * (playerLValue / 50) * (tuningModifier / 100))
                ss:AddSavedModifier(statObj, statPLevel)
                ss:AddSavedModifier(statObj, statCritChance)
                ss:AddSavedModifier(statObj, statCritDamage)
                ss:AddSavedModifier(statObj, statHeadshot)
                            
        local rarity = rarityList[rarityModifier+1]
        if rarityModifier == 5 then
            local rnd = math.random(5)
            rarity = rarityList[rnd]
        end
        Game['gameRPGManager::ForceItemQuality;GameObjectgameItemDataCName'](player, itemdata, CName.new(rarity))
            end
        end
    end
end

function removeQuest()
    local currentWeapon = espd:GetActiveWeapon()
    local itemdata = ts:GetItemData(player, currentWeapon)
    if itemdata == nil then
        return false
    end
    if itemdata:HasTag("Quest") then
        itemdata:RemoveDynamicTag("Quest")
    end
    return true
end

function fillWeaponList()
    gunList = {}
    for i = 1, #weaponsActivated do
        if weaponsActivated[i] then
            for _, v in ipairs(gunTypes[i]) do
                table.insert(gunList, v)
            end
        end
    end
    print(#gunList)
end

registerForEvent("onUpdate", function (timeDelta)
    if initiatedMod == false then
        return
    end
    getSystems()
    startCombat = player:IsInCombat()
    isDead = player:IsDead()

    if initiatedMod == true and isDead then
        initiatedMod = false
        startMod = false
        startTimer = false
    end

    if initiatedMod == true and firstGunSpawned == false then
    	local firstGun = math.random(#gunList) 
        Game.UnequipItem('Weapon', '0')
        Game.UnequipItem('Weapon', '1')
        Game.UnequipItem('Weapon', '2')
        Game.EquipItemToHand(gunList[firstGun])
        firstGunSpawned = true
    end

    if initiatedMod == true and startMod == false then
        upgradeWeapon()
        removeQuest()
        startMod = true
    end

    -- Stop the timer if leaving combat
    if initiatedMod == true and startCombat == false then
        startTimer = false
    end

    -- Entering combat setting / reseting the start time of the weapon spawning cycle
    if initiatedMod == true and startCombat == true and startTimer == false then
        startTime = os.time()
        qa_tracker = os.time()
        startTimer = true
    end

    -- Updating a second timer to compare against the start time
    if initiatedMod == true and startCombat == true and startTimer == true then
        Time = os.time()
        timeElapsed = interval - (Time - startTime)
    end

    -- Removing weapon when the cycle is finished and still in combat
    if initiatedMod == true and timeElapsed <= 0 and removedWeapon == false and startCombat == true then
        removedWeapon = removeWeap()
        startTime = os.time()
    end

    -- Giving gun once the gun removing section tags the old weapon as nil and resetting the timer
    if initiatedMod == true and startCombat == true and removedWeapon == true then
        -- oldWeap = activeWeap()
        giveWeap()
        gaveWeapon = true
        removedWeapon = false
    end

    -- Giving weapon triggers gaveWeapon, signaling to upgrade active weapon
    if initiatedMod == true and startCombat == true and gaveWeapon == true then
        if removeQuest() == true then
            upgradeWeapon()
            Game.AddToInventory("Ammo.RifleAmmo",700);
            Game.AddToInventory("Ammo.ShotgunAmmo",100);
            Game.AddToInventory("Ammo.SniperRifleAmmo",100);
            Game.AddToInventory("Ammo.HandgunAmmo",500);
            gaveWeapon = false
	end
    end

end)

local elements = {
    tabsize = {
        x = 350,
        y = {
            general = 400
        }
    },
    button = {
        height = 19,
        width = {
            dialogue = 100,
            dialoguehalf = 44,
            tripple = 159,
            double = 135,
            single = 335,
            dateinput = 100
        }
    },
    itemwidth = {
        singledialoguebutton = 335,
        singledialogue = 335,
        doubledialoguebutton = 140,
        doubledialogue = 140,
        tripledialoguebutton = 100,
        tripledialogue = 100,
        dateinput = 100
    }
}

rarityList = {
    "Legendary",
    "Epic",
    "Rare",
    "Uncommon",
    "Common",
    "Random"
}

--, true, ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoMove | ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoScrollbar | ImGuiWindowFlags.NoBackground

registerForEvent("onDraw", function ()
    CPS.setThemeBegin()
    wWidth, wHeight = GetDisplayResolution()
    ImGui.SetWindowSize(elements.tabsize.x, elements.tabsize.y.general)

    if ImGui.Begin("WeaponRoulette", true, ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoTitleBar | ImGuiWindowFlags.NoScrollbar | ImGuiWindowFlags.NoBackground) then
        ImGui.SetWindowFontScale(1)

        if initiatedMod == false then
            if (ImGui.BeginTabBar("WeaponRoulette")) then
                wWidth, wHeight = GetDisplayResolution()
                if (ImGui.BeginTabItem("STATS")) then
                    ImGui.Spacing()
                    if (ImGui.Button("S T A R T", elements.button.width.single, elements.button.height)) then
                        initiatedMod = true
                        Game.GetPlayer():SetWarningMessage("RANDOMIZED WEAPON PROTOCL INITIATED")
                    end
                    ImGui.Separator()
                    ImGui.ProgressBar(0, -1, 25)
                ImGui.EndTabItem()
                end

                if (ImGui.BeginTabItem("SETTINGS")) then
                    if (ImGui.CollapsingHeader("T U N I N G")) then
                        ImGui.Separator()
                        ImGui.PushItemWidth(-1)
                        tuningSettings = ImGui.SliderInt("Difficulty", tuningSettings, 1, 100)
                        if (ImGui.IsItemHovered()) then
                            ImGui.SetTooltip("Lower values increase difficulty. Default 80")
                        end
                        ImGui.Separator()
                    end
                    if (ImGui.CollapsingHeader("T I M E R")) then
                        ImGui.Separator()
                        ImGui.PushItemWidth(150)
                        intervalModifier = ImGui.InputInt("##Timer Assignment", intervalModifier, 5, 2400)
                        ImGui.SameLine()
                        ImGui.Text("SECONDS")
                        ImGui.Separator()
                    end
                    if (ImGui.CollapsingHeader("R A R I T Y")) then
                        ImGui.Separator()
                        ImGui.PushItemWidth(150)
                        raritySelection = ImGui.Combo("##Rarity", raritySelection, rarityList, #rarityList)
                        ImGui.Separator()
                    end
                    if (ImGui.CollapsingHeader("C A T E G O R I E S")) then
                        ImGui.Separator()
                        _, checkedPower = ImGui.Checkbox("POWER", weaponsPower)
                        if checkedPower then
                            weaponsPower = not weaponsPower
                        end
                        ImGui.SameLine()
                        _, checkedTech = ImGui.Checkbox("TECH", weaponsTech)
                        if checkedTech then
                            weaponsTech = not weaponsTech
                        end
                        ImGui.SameLine()
                        _, checkedSmart = ImGui.Checkbox("SMART", weaponsSmart)
                        if checkedSmart then
                            weaponsSmart = not weaponsSmart
                        end
                        ImGui.SameLine()
                        _, checkedBlunt = ImGui.Checkbox("BLUNT", weaponsBlunt)
                        if checkedBlunt then
                            weaponsBlunt = not weaponsBlunt
                        end
                        ImGui.SameLine()
                        _, checkedBlade = ImGui.Checkbox("BLADE", weaponsBlade)
                        if checkedBlade then
                            weaponsBlade = not weaponsBlade
                        end
                        ImGui.Separator()
                    end
                    ImGui.Separator()
                    if (ImGui.Button("U P D A T E##Timer Change", -1, elements.button.height)) then
                        interval = intervalModifier
                        rarityModifier = raritySelection
                        tuningModifier = tuningSettings
                        weaponsActivated = {
                            weaponsBlade,
                            weaponsBlunt,
                            weaponsPower,
                            weaponsSmart,
                            weaponsTech
                        }
                        fillWeaponList()
                        Game.GetPlayer():SetWarningMessage("SETTINGS UPDATED")
                    end
                ImGui.EndTabItem()
                end
            ImGui.EndTabBar()
            end
        end
        
        if initiatedMod == true then
            if (ImGui.Button("R E S E T", elements.button.width.single, elements.button.height)) then
                initiatedMod = false
            end
            ImGui.Separator()
            if startCombat == true then
                ImGui.ProgressBar((interval - timeElapsed)/interval, -1, 25)
            end
            if startCombat == false then
                ImGui.ProgressBar(0, -1, 25)
            end
        end
    ImGui.End()
    end
    CPS.setThemeEnd()
end)

registerForEvent("onShutdown", function()
    initiatedMod = false
end)

