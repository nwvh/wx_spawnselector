wx = {}
wx.Debug = false -- Enables the /choose command that triggers the spawn selector export

wx.Locations = {
    ["Police Department"] = {
        Spawn = vector4(428.8641, -981.2666, 30.7103, 95.1865),
        Icon = 'building-shield',
        Description = "Main building of the local police department"
    },
    ["Airport"] = {
        Spawn = vector4(-1041.5402, -2744.5745, 21.3594, 327.4831),
        Icon = 'plane-arrival',
        Description = "Los Santos International Airport"
    },
    ["Hospital"] = {
        Spawn = vector4(373.5801, -597.6584, 28.8329, 238.7010),
        Icon = 'hospital',
        Description = ""
    },
    ["Paleto Bay"] = {
        Spawn = vector4(145.5080, 6641.6006, 31.5540, 179.7455),
        Icon = 'mountain-city',
        Description = "Paleto Bay is a small town located in Blaine County, San Andreas"
    },
}

wx.LastLocation = {
    Title = "Last Location",
    Icon = 'map-location-dot'
}