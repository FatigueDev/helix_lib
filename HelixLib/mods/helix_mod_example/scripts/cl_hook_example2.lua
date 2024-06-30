local hook, meta_hook = {}, {}
setmetatable(hook, meta_hook)

meta_hook.__call = function(...)

    ---@type ICoreClientAPI
    capi = select(2, ...)

    ---@type ActiveSlotChangeEventArgs
    eventArgs = select(3, ...)
    
    capi.ShowChatMessage("Moved from "..tostring(eventArgs.FromSlot).." to "..tostring(eventArgs.ToSlot))
end

return hook;
