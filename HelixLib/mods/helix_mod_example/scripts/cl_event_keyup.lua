local hook, meta_hook = {}, {}
setmetatable(hook, meta_hook)

meta_hook.__call = function(...)

    -- Sometimes we need something that isn't global.
    -- We can look at our annotations and just copy / paste functionality as we need it.
    -- GlKeys does not exist within global space, but requiring it makes it all accessible.
    GlKeys = require("global_stuff.GlKeys")

    ---@type ICoreClientAPI
    capi = select(2, ...)

    ---@type KeyEvent
    keyEvent = select(3, ...)
    
    capi.ShowChatMessage(tostring(keyEvent.KeyCode).." - "..keyEvent.KeyChar)

    --If we pressed the 'u' key
    if keyEvent.KeyCode == GlKeys.U then
        capi.ShowChatMessage("U pressed U, uwu.")
    end

end

return hook;
