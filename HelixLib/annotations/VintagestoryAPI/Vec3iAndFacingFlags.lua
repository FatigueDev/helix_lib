---@meta

---@class Vec3iAndFacingFlags
---@field X number
---@field Y number
---@field Z number
---@field FacingFlags number
---@field OppositeFlags number
---@field extIndexOffset number
---@field OppositeFlagsUpperOrLeft number
---@field OppositeFlagsLowerOrRight number
Vec3iAndFacingFlags = {}

---@param x number
---@param y number
---@param z number
---@param flags number
---@param oppositeFlags number
---@return Vec3iAndFacingFlags
function Vec3iAndFacingFlags.ctor(x, y, z, flags, oppositeFlags) end
---@param x number
---@param y number
---@param z number
---@param flags number
---@param oppositeFlags number
---@param flagsUL number
---@param flagsLR number
---@return Vec3iAndFacingFlags
function Vec3iAndFacingFlags.ctor(x, y, z, flags, oppositeFlags, flagsUL, flagsLR) end

---@param value number
function Vec3iAndFacingFlags.Initialize(value) end

---@return userdata
function Vec3iAndFacingFlags.GetType() end

---@return string
function Vec3iAndFacingFlags.ToString() end

---@param obj userdata
---@return boolean
function Vec3iAndFacingFlags.Equals(obj) end

---@return number
function Vec3iAndFacingFlags.GetHashCode() end


