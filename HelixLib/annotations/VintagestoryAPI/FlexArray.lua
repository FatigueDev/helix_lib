---@meta

---@class FlexArray
---@field Item number
---@field Buffer number
---@field Length number
FlexArray = {}

---@param Capacity number
---@return FlexArray
function FlexArray.ctor(Capacity) end

---@param i number
---@return number
function FlexArray.get_Item(i) end

---@param i number
---@param value number
function FlexArray.set_Item(i, value) end

---@return number
function FlexArray.get_Buffer() end

---@return number
function FlexArray.get_Length() end

---@param value number
function FlexArray.set_Length(value) end

---@return userdata
function FlexArray.GetType() end

---@return string
function FlexArray.ToString() end

---@param obj userdata
---@return boolean
function FlexArray.Equals(obj) end

---@return number
function FlexArray.GetHashCode() end


