---@meta

---@class DecorFlags
---@field IsDecor number Set to 1 for all decor blocks, or else they will not be rendered. (This intentionally prevents unloaded / unknown decor blocks from rendering)
---@field DrawIfCulled number If true, do not cull even if parent face was culled (used e.g. for medium carpet, which stick out beyond the parent face)
---@field AlternateZOffset number If true, alternates z-offset vertexflag by 1 in odd/even XZ positions to reduce z-fighting (used e.g. for medium carpets overlaying neighbours)
---@field NotFullFace number IF true, this decor is NOT (at least) a full opaque face so that the parent block face still needs to be drawn
---@field Removable number If true, this decor is removable using the players hands, without breaking the parent block
---@field HasSidedVariants number If true, this decor is removable using the players hands, without breaking the parent block
DecorFlags = {}

---@return DecorFlags
function DecorFlags.ctor() end

---@return userdata
function DecorFlags.GetType() end

---@return string
function DecorFlags.ToString() end

---@param obj userdata
---@return boolean
function DecorFlags.Equals(obj) end

---@return number
function DecorFlags.GetHashCode() end


