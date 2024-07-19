---@meta

-- Windmode flags, which can be ORed with existing vertex data to add the specified wind mode (assuming it was 0 previously!)
---@class EnumWindBitModeMask
---@field WeakWind number Slightly affected by wind. Wiggle + Height bend based on ground distance.
---@field NormalWind number Normally affected by wind. Wiggle + Height bend based on ground distance.
---@field Leaves number Same as normal wind, but with some special behavior for leaves. Wiggle + Height bend based on ground distance.
---@field Bend number Same as weak wind, but no wiggle. Height bend based on ground distance.
---@field TallBend number Bend behavior for tall plants
---@field Water number Vertical wiggle
---@field ExtraWeakWind number Vertical wiggle
---@field Fruit number
---@field WeakWindNoBend number
EnumWindBitModeMask = {}


---@return userdata
function EnumWindBitModeMask.GetType() end

---@return string
function EnumWindBitModeMask.ToString() end

---@param obj userdata
---@return boolean
function EnumWindBitModeMask.Equals(obj) end

---@return number
function EnumWindBitModeMask.GetHashCode() end


