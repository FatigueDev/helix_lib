---@meta

---@class FrustumCulling
---@field ViewDistanceSq number
---@field lod0BiasSq number
---@field lod2BiasSq number If distance squared is above this fraction of ViewDistanceSq, switch to LOD2.  Default value corresponds to distances beyond around 67% of the player's view distance.   At default, approximately 55% of the total rendered chunks will use LOD2.
---@field shadowRangeX number
---@field shadowRangeZ number
FrustumCulling = {}

---@return FrustumCulling
function FrustumCulling.ctor() end

---@param newValue number
function FrustumCulling.UpdateViewDistance(newValue) end

---@param x number
---@param y number
---@param z number
---@param radius number
---@return boolean
function FrustumCulling.SphereInFrustum(x, y, z, radius) end

---@param sphere Sphere Not really a sphere, actually now an AABB centred on x,y,z, but we keep the name for API consistency
---@return boolean
function FrustumCulling.InFrustum(sphere) end

---@param sphere Sphere Not really a sphere, actually now an AABB centred on x,y,z, but we keep the name for API consistency
---@return boolean
function FrustumCulling.InFrustumShadowPass(sphere) end

---@param sphere Sphere Not really a sphere, actually now an AABB centred on x,y,z, but we keep the name for API consistency
---@param nowVisible boolean
---@param lodLevel? number
---@return boolean
function FrustumCulling.InFrustumAndRange(sphere, nowVisible, lodLevel) end

---@param playerPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param projectionMatrix number
---@param cameraMatrix number
function FrustumCulling.CalcFrustumEquations(playerPos, projectionMatrix, cameraMatrix) end

---@return userdata
function FrustumCulling.GetType() end

---@return string
function FrustumCulling.ToString() end

---@param obj userdata
---@return boolean
function FrustumCulling.Equals(obj) end

---@return number
function FrustumCulling.GetHashCode() end


