---@meta

---@class NearbyLightSource
---@field manhattenDist number
---@field block Block
---@field posX number
---@field posY number
---@field posZ number
NearbyLightSource = {}

---@return NearbyLightSource
function NearbyLightSource.ctor() end

---@return userdata
function NearbyLightSource.GetType() end

---@return string
function NearbyLightSource.ToString() end

---@param obj userdata
---@return boolean
function NearbyLightSource.Equals(obj) end

---@return number
function NearbyLightSource.GetHashCode() end


