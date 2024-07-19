---@meta

---@class IMountableSupplier
---@field MountPoints IMountable[]
IMountableSupplier = {}


---@return IMountable[]
function IMountableSupplier.get_MountPoints() end

---@param entity Entity The basic class for all entities in the game
---@return boolean
function IMountableSupplier.IsMountedBy(entity) end

---@param entity Entity The basic class for all entities in the game
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IMountableSupplier.GetMountOffset(entity) end


