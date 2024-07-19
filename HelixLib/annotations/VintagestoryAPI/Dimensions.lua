---@meta

---@class Dimensions
---@field NormalWorld number Used to make explicit all places in the code where the default dimension, dimension 0, is assumed, in case we need to search and replace them later
---@field MiniDimensions number The dimension dedicated for storage of 'mini-dimensions', i.e. many separate 16k cubes of block space used for WorldEdit preview, vehicles etc
Dimensions = {}

---@return Dimensions
function Dimensions.ctor() end

---@return userdata
function Dimensions.GetType() end

---@return string
function Dimensions.ToString() end

---@param obj userdata
---@return boolean
function Dimensions.Equals(obj) end

---@return number
function Dimensions.GetHashCode() end


