---@meta

---@class MiniDictionary
---@field Item number
---@field Count number
---@field NOTFOUND number
MiniDictionary = {}

---@param size number
---@return MiniDictionary
function MiniDictionary.ctor(size) end

---@param key string
---@return number
function MiniDictionary.get_Item(key) end

---@param key string
---@param value number
function MiniDictionary.set_Item(key, value) end

---@return userdata
function MiniDictionary.GetType() end

---@return string
function MiniDictionary.ToString() end

---@param obj userdata
---@return boolean
function MiniDictionary.Equals(obj) end

---@return number
function MiniDictionary.GetHashCode() end


