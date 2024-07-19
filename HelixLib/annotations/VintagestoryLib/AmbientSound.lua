---@meta

---@class AmbientSound
---@field AdjustedVolume number
---@field Sound ILoadedSound
---@field QuantityNearbyBlocks number
---@field AssetLoc AssetLocation
---@field BoundingBoxes table
---@field SectionPos Vec3i
---@field Ratio number
AmbientSound = {}

---@return AmbientSound
function AmbientSound.ctor() end

---@param sound AmbientSound
---@return number
function AmbientSound.DistanceTo(sound) end

---@return number
function AmbientSound.get_AdjustedVolume() end

---@param other AmbientSound
---@return boolean
function AmbientSound.Equals(other) end

---@param x AmbientSound
---@param y AmbientSound
---@return boolean
function AmbientSound.Equals(x, y) end

---@param obj userdata
---@return boolean
function AmbientSound.Equals(obj) end

---@return number
function AmbientSound.GetHashCode() end

function AmbientSound.FadeToNewVolumne() end

---@param obj AmbientSound
---@return number
function AmbientSound.GetHashCode(obj) end

---@param game ClientMain
---@param wireframe DrawWireframeCube
function AmbientSound.RenderWireFrame(game, wireframe) end

---@return userdata
function AmbientSound.GetType() end

---@return string
function AmbientSound.ToString() end


