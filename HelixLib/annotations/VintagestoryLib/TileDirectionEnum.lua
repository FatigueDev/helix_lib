---@meta

---@class TileDirectionEnum
---@field Top number
---@field Bottom number
---@field Left number
---@field Right number
---@field TopLeft number
---@field TopRight number
---@field BottomLeft number
---@field BottomRight number
---@field Center number
---@field DirectionCounts number
TileDirectionEnum = {}

---@return TileDirectionEnum
function TileDirectionEnum.ctor() end

---@return userdata
function TileDirectionEnum.GetType() end

---@return string
function TileDirectionEnum.ToString() end

---@param obj userdata
---@return boolean
function TileDirectionEnum.Equals(obj) end

---@return number
function TileDirectionEnum.GetHashCode() end


