---@meta Helix

---@class Helix.Log
Helix.Log = {}

-- Print an encoded json string to the Vintage Story event logger.
-- Basically, it replaces { with {{ and } with }} to prevent C# format fuckery.
---@param encodedJson string
function Helix.Log.Json(encodedJson) end