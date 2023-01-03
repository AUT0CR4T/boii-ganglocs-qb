----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}

Config.Debug = false -- Enables/disables debug messages

-- Core settings for renamed cores
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    TargetName = 'qb-target', -- The name of your third eye targeting. Default; qb-target
    ManagementEvent = 'qb-gangmenu:client:OpenMenu', -- Name of your boss menu event. Default; 'qb-gangmenu:client:OpenMenu'
    ClothingEvent = 'qb-clothing:client:openOutfitMenu', -- The name of your clothing event this is needed to open outfit menu. Default; 'qb-clothing:client:OpenOutfitMenu'
}

-- Location settings
Config.Locations = {
    Management = {
        ['lostmc'] = { -- Ensure gang name here matches your shared/gangs.lua
            grade = 0, -- Grade able to view target option, they still require boss access to open
            coords = vector3(973.55, -97.87, 74.87), -- Coords for circlezone
            radius = 0.5, -- Radius of circlezone
            distance = 1.5, -- Distance zone can be targeted
            useZ = true, -- Use Z coord above to place zone
            debugPoly = true -- Debug zone
        }
    },
    Stash = {
        ['lostmc'] = { -- Ensure gang name here matches your shared/gangs.lua
            label = 'Lost MC Stash', -- Label used by inventory
            grade = 0, -- Grade able to view target option
            size = 100000, -- Stash storage size
            slots = 30, -- Stash storage slots
            raidtime = math.random(10,20), -- Time taken for service jobs to raid stash
            coords = vector3(977.2, -104.19, 74.85), -- Coords for circlezone
            radius = 0.5, -- Radius of circlezone
            distance = 1.5, -- Distance zone can be targeted
            useZ = true, -- Use Z coord above to place zone
            debugPoly = true -- Debug zone
        }
    },
    Wardrobe = {
        ['lostmc'] = { -- Ensure gang name here matches your shared/gangs.lua
            grade = 0, -- Grade able to view target option
            coords = vector3(986.98, -92.94, 74.85), -- Coords for circlezone
            radius = 0.5, -- Radius of circlezone
            distance = 1.5, -- Distance zone can be targeted
            useZ = true, -- Use Z coord above to place zone
            debugPoly = true -- Debug zone
        }
    }
}

-- Service jobs
Config.Services = {
    --[[
        NOTES:

        - NAME = YOUR JOB NAME IN SHARED
        - GRADE = GRADE ABLE TO VIEW TARGET OPTION TO FORCE ENTRY INTO STASH
    ]]
    {name = 'police', grade = 1}

    -- You can add as many jobs here as required. Example below;
    -- {name = 'police', grade = 1},
    -- {name = 'dea', grade = 1},
    -- {name = 'fib', grade = 1}
}

-- Animation settings
Config.Animations = {
    Raid = {
        Dict = 'mini@safe_cracking',
        Anim = 'door_open_succeed_stand',
        Flags = 49
    }
}
