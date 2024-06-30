---@type ICoreClientAPI
local capi = api and api or {}

---@type HelixLib.Threads
local threads = HELIX.Threads and HELIX.Threads or {}

local function showChatMessage(text)
    capi.ShowChatMessage(text)
end

-- capi.get_Event()

-- capi.get_Event().RegisterGameTickListener(
--     function(dt)
--         showChatMessage("TOCK!")
--     end,
--  100)

-- ---@param player IClientPlayer
-- ---@type IsPlayerReadyDelegate
-- function LiftWeights(player)
-- end

-- ---@param entity Entity
-- capi.Event.add_OnEntitySpawn(function(entity)
--     print("Spawned - "..entity.GetName())
-- end)

-- function doCoroutine(co)
--     local status = coroutine.status(co)

--     if(status ~= "suspended") then
--         coroutine.resume(co)
--     else    
--         return
--     end

--     return doCoroutine(co)
-- end

-- if(coroutine.status())

local co = threads.Get("print_event")

if(co == nil) then
    co = coroutine.create(function()
        for i = 0, 5 do
            print("Coroutine resumed and has "..i)
            coroutine.yield()
        end
    end)
    threads.Add(co, "print_event", coroutine.status(co))
end

if(coroutine.status(co) == "dead") then print("Coroutine died!") end

coroutine.resume(co)

-- showChatMessage("HELIX: This is certainly a thing that has just been done.")