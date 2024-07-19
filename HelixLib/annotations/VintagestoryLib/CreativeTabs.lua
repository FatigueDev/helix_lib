---@meta

---@class CreativeTabs
---@field TabsByCode OrderedDictionary`2
---@field Tabs function
CreativeTabs = {}

---@return CreativeTabs
function CreativeTabs.ctor() end

---@param tab CreativeTab
function CreativeTabs.Add(tab) end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function CreativeTabs.get_TabsByCode() end

---@param code string
---@return CreativeTab
function CreativeTabs.GetTabByCode(code) end

---@return function
function CreativeTabs.get_Tabs() end

---@return userdata
function CreativeTabs.GetType() end

---@return string
function CreativeTabs.ToString() end

---@param obj userdata
---@return boolean
function CreativeTabs.Equals(obj) end

---@return number
function CreativeTabs.GetHashCode() end


