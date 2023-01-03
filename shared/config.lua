----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}

Config.Debug = false -- Enables/disables debug messages

-- Core settings for renamed cores
Config.CoreSettings = {
    Core = 'BOII', -- The name of your core. Default; QBCore
    CoreFolder = 'boii-core', -- The name of your core folder. Default; qb-core
    TargetName = 'boii-target', -- The name of your third eye targeting. Default; qb-target
    ManagementEvent = 'boii-gangmenu:client:OpenMenu', -- Name of your boss menu event. Default; 'qb-gangmenu:client:OpenMenu'
    ClothingEvent = 'boii-clothing:client:openOutfitMenu', -- The name of your clothing event this is needed to open outfit menu. Default; 'qb-clothing:client:OpenOutfitMenu'
}

-- Location settings
Config.Locations = {
    Management = {
        --[[
            NOTES: 

            - GANG = YOUR GANG NAME IN SHARED
            - GRADE = GRADE ABLE TO VIEW TARGET OPTION - STILL REQUIRES BOSS ACCESS TO OPEN
            - COORDS = LOCATION OF GANG MANAGEMENT
        ]]
        {gang = 'lostmc', grade = 3, coords = vector3(973.66, -97.87, 74.87), radius = 0.5, debugPoly = true, useZ = true, distance = 1.5},
    },
    Stash = {
        --[[
            NOTES: 

            - GANG = YOUR GANG NAME IN SHARED
            - GRADE = GRADE ABLE TO VIEW TARGET OPTION AND FORCE ENTRY
            - LABEL = NAME OF STASH TO BE USED
            - SIZE = STASH STORAGE SIZE
            - SLOTS = STASH SLOT AMOUNT
            - RAIDTIME = AMOUNT OF TIME TAKE FOR SERVICE JOBS TO FORCE ENTRY
            - COORDS = LOCATION OF GANG MANAGEMENT
        ]]
        {gang = 'lostmc', grade = 1, label = 'Lost MC', size = 100000, slots = 30, raidtime = math.random(8,15), coords = vector3(977.2, -104.19, 74.85), radius = 0.5, debugPoly = true, useZ = true, distance = 1.5},
    },
    Wardrobe = {
        --[[
            NOTES: 

            - GANG = YOUR GANG NAME IN SHARED
            - GRADE = GRADE ABLE TO VIEW TARGET OPTION
            - COORDS = LOCATION OF GANG MANAGEMENT
        ]]
        {gang = 'lostmc', grade = 0, coords = vector3(987.05, -92.96, 74.85), radius = 0.5, debugPoly = true, useZ = true, distance = 1.5},
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