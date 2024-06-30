---@type ICoreClientAPI
capi = capi

local hook = {};

---@param dt number
function hook.__call(dt) 
    capi.Logger.Debug("Deltatime is "..dt)
end



return hook;