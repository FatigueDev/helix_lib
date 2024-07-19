---@meta

---@class TileSideEnum
---@field Opposites number
---@field AxisByTileSide number
---@field OffsetByTileSide FastVec3i[]
---@field MoveIndex number
---@field Codes string
---@field North number
---@field East number
---@field South number
---@field West number
---@field Up number
---@field Down number
---@field SideCount number
TileSideEnum = {}

---@return TileSideEnum
function TileSideEnum.ctor() end

---@param nValue number
---@return number
function TileSideEnum.ToFlags(nValue) end

---@param tileSide number
---@return number
function TileSideEnum.GetOpposite(tileSide) end

---@return userdata
function TileSideEnum.GetType() end

---@return string
function TileSideEnum.ToString() end

---@param obj userdata
---@return boolean
function TileSideEnum.Equals(obj) end

---@return number
function TileSideEnum.GetHashCode() end


