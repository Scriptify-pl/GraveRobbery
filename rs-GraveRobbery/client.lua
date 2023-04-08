local started = false
local blokada1 = false
local blokada2 = false
local blokada3 = false  
local blokada4 = false 
local blokada5 = false


local function loadAnimDict(dict)
    RequestAnimDict(dict)
local repeater = 0
repeat 
    Wait(1)
    repeater = HasAnimDictLoaded(dict)
until (repeater == 1)
end

local function loadModel(model)
    RequestModel(model)
    local repeater = 0
    repeat 
        Wait(1) 
        repeater = HasModelLoaded(model)
    until (repeater == 1)
end



local function startheist()
loadAnimDict('misscarsteal4@actor')  
loadAnimDict('amb@world_human_prostitute@cokehead@base')  
DoScreenFadeOut(300)
started = true
SetEntityCoords(PlayerPedId(), Config.MainGrave.Playerpos.x, Config.MainGrave.Playerpos.y, Config.MainGrave.Playerpos.z-1)
SetEntityHeading(PlayerPedId(), Config.MainGrave.Playerpos.w)
FreezeEntityPosition(PlayerPedId(), true)
TaskPlayAnim(PlayerPedId(), 'amb@world_human_prostitute@cokehead@base', 'base', 1.0, 1.0, -1, 49, 0, 0, 0, 0) 
TaskPlayAnim(ped, 'misscarsteal4@actor', 'actor_berating_loop', 1.0, 1.0, -1, 49, 0, 0, 0, 0)      
cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
SetCamActive(cam, true)
RenderScriptCams(true, false, 1, true, true)
SetCamCoord(cam, Config.MainGrave.Camerapos.x, Config.MainGrave.Camerapos.y, Config.MainGrave.Camerapos.z)
PointCamAtCoord(cam, Config.MainGrave.Camerapos.x, Config.MainGrave.Camerapos.y, Config.MainGrave.Camerapos.z, 0.7)
ESX.UI.Menu.CloseAll()
Wait(900)
DoScreenFadeIn(350)
Wait(300)
ESX.ShowNotification(Config.MainGrave.Cam1)
Wait(3000)
ESX.ShowNotification(Config.MainGrave.Cam2)
Wait(2000)
ESX.ShowNotification(Config.MainGrave.Cam3)
Wait(1000)
ClearPedTasks(PlayerPedId())
ClearPedTasks(ped)
FreezeEntityPosition(PlayerPedId(), false)
SetCamActive(cam, false)
RenderScriptCams(false, false, 0, true, true)
timer()
end

function timer()
   if started then 
    Wait(Config.MainGrave.Cooldown*60000)
    started = false
    blokada1 = false
    blokada2 = false
    blokada3 = false  
    blokada4 = false 
    blokada5 = false
   end 
end    

function kopanie(id)
    loadAnimDict('random@burial')
    loadAnimDict('anim@gangops@facility@servers@bodysearch@')
    loadModel('prop_ld_shovel')
    FreezeEntityPosition(PlayerPedId(), true)
    SetCurrentPedWeapon(PlayerPedId(), GetHashKey("weapon_unarmed"), true)
    if id == 1 then
    blokada1 = true     
    local shovel = CreateObject("prop_ld_shovel", pos, true, false, true)
    TaskPlayAnim(PlayerPedId(), 'random@burial', 'a_burial', 1.0, 1.0, -1, 1, 0, 0, 0, 0)
    AttachEntityToEntity(shovel, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 2, 1)
    Wait(10000)
    ClearPedTasks(PlayerPedId())
    DeleteObject(shovel)    
    trumnaspawn(1)
    elseif id == 2 then
    blokada2 = true   
    local shovel = CreateObject("prop_ld_shovel", pos, true, false, true)
    TaskPlayAnim(PlayerPedId(), 'random@burial', 'a_burial', 1.0, 1.0, -1, 1, 0, 0, 0, 0)
    AttachEntityToEntity(shovel, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 2, 1)
    Wait(10000)
    ClearPedTasks(PlayerPedId())
    DeleteObject(shovel)        
    trumnaspawn(2)   
    elseif id == 3 then
        blokada3 = true 
        local shovel = CreateObject("prop_ld_shovel", pos, true, false, true)
        TaskPlayAnim(PlayerPedId(), 'random@burial', 'a_burial', 1.0, 1.0, -1, 1, 0, 0, 0, 0)
        AttachEntityToEntity(shovel, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 2, 1)
        Wait(10000)
        ClearPedTasks(PlayerPedId())
        DeleteObject(shovel)    
        trumnaspawn(3)     
    elseif id == 4 then
     blokada4 = true 
     local shovel = CreateObject("prop_ld_shovel", pos, true, false, true)
     TaskPlayAnim(PlayerPedId(), 'random@burial', 'a_burial', 1.0, 1.0, -1, 1, 0, 0, 0, 0)
     AttachEntityToEntity(shovel, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 2, 1)
     Wait(10000)
     ClearPedTasks(PlayerPedId())
     DeleteObject(shovel)    
     trumnaspawn(4)     
    elseif id == 5 then
      blokada5 = true 
      local shovel = CreateObject("prop_ld_shovel", pos, true, false, true)
      TaskPlayAnim(PlayerPedId(), 'random@burial', 'a_burial', 1.0, 1.0, -1, 1, 0, 0, 0, 0)
      AttachEntityToEntity(shovel, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 2, 1)
      Wait(10000)
      ClearPedTasks(PlayerPedId())
      DeleteObject(shovel)    
      trumnaspawn(5)    
    end     
end     

function trumnaspawn(id)
    if id == 1 then
    local trumna = CreateObject("prop_coffin_01", Config.MainGrave.Coffin1pos.x, Config.MainGrave.Coffin1pos.y, Config.MainGrave.Coffin1pos.z-1,  true, false, true) 
    SetEntityHeading(trumna, Config.MainGrave.Coffin1pos.w)  
    FreezeEntityPosition(trumna, true)
    Wait(1000)
    TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
    Wait(7500)
    DeleteObject(trumna)
    FreezeEntityPosition(PlayerPedId(), false)
    ClearPedTasks(PlayerPedId())
    ESX.TriggerServerCallback('rs-trummna:additem', function(source) end)
    elseif id == 2 then
        local trumna = CreateObject("prop_coffin_01", Config.MainGrave.Coffin2pos.x, Config.MainGrave.Coffin2pos.y, Config.MainGrave.Coffin2pos.z-1,  true, false, true)
        SetEntityHeading(trumna, Config.MainGrave.Coffin2pos.w) 
        FreezeEntityPosition(trumna, true)
        Wait(1000)
        TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
        Wait(7500)
        DeleteObject(trumna)
        FreezeEntityPosition(PlayerPedId(), false)
        ClearPedTasks(PlayerPedId())
        ESX.TriggerServerCallback('rs-trummna:additem', function(source) end)
    elseif id == 3 then    
        local trumna = CreateObject("prop_coffin_01", Config.MainGrave.Coffin3pos.x, Config.MainGrave.Coffin3pos.y, Config.MainGrave.Coffin3pos.z-1, true, false, true)
        SetEntityHeading(trumna, Config.MainGrave.Coffin3pos.w) 
        FreezeEntityPosition(trumna, true)
        Wait(1000)
        TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
        Wait(7500)
        DeleteObject(trumna)
        FreezeEntityPosition(PlayerPedId(), false)
        ClearPedTasks(PlayerPedId())
        ESX.TriggerServerCallback('rs-trummna:additem', function(source) end)
    elseif id == 4 then
        local trumna = CreateObject("prop_coffin_01", Config.MainGrave.Coffin4pos.x, Config.MainGrave.Coffin4pos.y, Config.MainGrave.Coffin4pos.z-1, true, false, true)
        SetEntityHeading(trumna, Config.MainGrave.Coffin4pos.w)   
        FreezeEntityPosition(trumna, true)
        Wait(1000)
        TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
        Wait(7500)
        DeleteObject(trumna)
        FreezeEntityPosition(PlayerPedId(), false)
        ClearPedTasks(PlayerPedId())
        ESX.TriggerServerCallback('rs-trummna:additem', function(source) end)
    elseif id == 5 then    
        local trumna = CreateObject("prop_coffin_01", Config.MainGrave.Coffin5pos.x, Config.MainGrave.Coffin5pos.y, Config.MainGrave.Coffin5pos.z-1,  true, false, true)
        SetEntityHeading(trumna, Config.MainGrave.Coffin5pos.w)   
        FreezeEntityPosition(trumna, true)
        Wait(1000)
        TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false ) 
        Wait(7500)
        DeleteObject(trumna)
        FreezeEntityPosition(PlayerPedId(), false)
        ClearPedTasks(PlayerPedId())
        ESX.TriggerServerCallback('rs-trummna:additem', function(source) end)
    end 
end

local function sellitem()
    ESX.TriggerServerCallback('rs-trummna:storageitem', function(haveitem)
        if haveitem then 
            ESX.ShowNotification(Config.MainGrave.HaveItem)
        else 
            ESX.ShowNotification(Config.MainGrave.NotHaveItem)
        end
    
    end)
end

Citizen.CreateThread(function()
    loadModel(Config.MainGrave.PedName)
    ped =  CreatePed(4, Config.MainGrave.PedName, Config.MainGrave.PedPos.x, Config.MainGrave.PedPos.y, Config.MainGrave.PedPos.z-1.0, Config.MainGrave.PedPos.w, false, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    exports[Config.target]:AddBoxZone("Ped_trumny", vector3(Config.MainGrave.PedPos.x, Config.MainGrave.PedPos.y, Config.MainGrave.PedPos.z), 0.7, 0.7, {  --Nazwa Locala ALbo Hash Peda
    name="Ped_trumny",
    heading=Config.MainGrave.PedPos.w,
    --debugPoly=true,
    minZ=Config.MainGrave.PedPos.z-1,
    maxZ=Config.MainGrave.PedPos.z+1    
   }, {
   options = {
       {
           action = function()
               startheist()
           end,
           icon = "fa-solid fa-question", 
           label = "Porozmawiaj",
           num = 1,
           canInteract =  function()
           return not started
           end,
       },
       {
     --   event = 'sellitem',
        action = function()
            sellitem()
        end,
        icon = "fa-solid fa-question", 
        label = "Sprzedaj Przedmioty",
        canInteract = function()
        return started 
        end,
    },
   },
   distance = 1.5 
   })


exports[Config.target]:AddBoxZone("trumna_1", vector3(Config.MainGrave.Coffin1pos.x, Config.MainGrave.Coffin1pos.y, Config.MainGrave.Coffin1pos.z), 2.6, 1, {
    name="trumna_1",
    heading=Config.MainGrave.Coffin1pos.w,
   -- debugPoly=true,
    minZ=Config.MainGrave.Coffin1pos.z-2,
    maxZ=Config.MainGrave.Coffin1pos.z+0.3 
}, {
options = {
   {
       action = function(id)
            kopanie(1)
       end,
       icon = "fas fa-cross", 
       label = "Wykop",
       num = 1,
       canInteract = function()
        return started and not blokada1
        end,
   },
},
distance = 1.5 -- dystans
})
exports[Config.target]:AddBoxZone("trumna_2", vector3(Config.MainGrave.Coffin2pos.x, Config.MainGrave.Coffin2pos.y, Config.MainGrave.Coffin2pos.z), 2.6, 1, {
    name="trumna_2",
    heading=Config.MainGrave.Coffin2pos.w,
    --debugPoly=true,
    minZ=Config.MainGrave.Coffin2pos.z-2,
    maxZ=Config.MainGrave.Coffin2pos.z+0.3    
}, {
options = {
   {
       action = function(id)
        kopanie(2)
       end,
       icon = "fas fa-cross", 
       label = "Wykop",
       num = 1,
       canInteract = function()
        return started and not blokada2
        end,
   },
},
distance = 1.5 -- dystans
})
exports[Config.target]:AddBoxZone("trumna_3", vector3(Config.MainGrave.Coffin3pos.x, Config.MainGrave.Coffin3pos.y, Config.MainGrave.Coffin3pos.z), 2.6, 1, {
    name="trumna_3",
    heading=Config.MainGrave.Coffin3pos.w,
    --debugPoly=true,
    minZ=Config.MainGrave.Coffin3pos.z-2,
    maxZ=Config.MainGrave.Coffin3pos.z+0.3 
}, {
options = {
   {
       action = function(id)
        kopanie(3)
       end,
       icon = "fas fa-cross", 
       label = "Wykop",
       num = 1,
       canInteract = function()
        return started and not blokada3
        end,
   },
},
distance = 1.5 -- dystans
})
exports[Config.target]:AddBoxZone("trumna_4", vector3(Config.MainGrave.Coffin4pos.x, Config.MainGrave.Coffin4pos.y, Config.MainGrave.Coffin4pos.z), 2.6, 1, {
    name="trumna_4",
    heading=Config.MainGrave.Coffin4pos.w,
    --debugPoly=true,
    minZ=Config.MainGrave.Coffin4pos.z-2,
    maxZ=Config.MainGrave.Coffin4pos.z+0.3 
}, {
options = {
   {
       action = function(id)
        kopanie(4)
       end,
       icon = "fas fa-cross", 
       label = "Wykop",
       num = 1,
       canInteract = function()
        return started and not blokada4
        end,
   },
},
distance = 1.5 -- dystans
})
exports[Config.target]:AddBoxZone("trumna_5", vector3(Config.MainGrave.Coffin5pos.x, Config.MainGrave.Coffin5pos.y, Config.MainGrave.Coffin5pos.z), 2.6, 1, {
    name="trumna_5",
    heading=Config.MainGrave.Coffin5pos.w,
    --debugPoly=true,
    minZ=Config.MainGrave.Coffin5pos.z-2,
    maxZ=Config.MainGrave.Coffin5pos.z+0.3  
}, {
options = {
   {
       action = function(id)
        kopanie(5)
       end,
       icon = "fas fa-cross", 
       label = "Wykop",
       num = 1,
       canInteract = function()
        return started and not blokada5
        end,
   },
},
distance = 1.5 -- dystans
})

end)
