---@meta

---@class AnimCacheEntry
---@field Animations Animation[] Animations of this cache.
---@field RootElems ShapeElement[] The root elements of this cache.
---@field RootPoses table The poses of this cache
AnimCacheEntry = {}

---@return AnimCacheEntry
function AnimCacheEntry.ctor() end

---@return userdata
function AnimCacheEntry.GetType() end

---@return string
function AnimCacheEntry.ToString() end

---@param obj userdata
---@return boolean
function AnimCacheEntry.Equals(obj) end

---@return number
function AnimCacheEntry.GetHashCode() end


