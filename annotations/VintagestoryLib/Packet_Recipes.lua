---@meta

---@class Packet_Recipes
---@field Code string
---@field Quantity number
---@field Data number
---@field CodeFieldID number
---@field QuantityFieldID number
---@field DataFieldID number
Packet_Recipes = {}

---@return Packet_Recipes
function Packet_Recipes.ctor() end

---@param value string
function Packet_Recipes.SetCode(value) end

---@param value number
function Packet_Recipes.SetQuantity(value) end

---@param value number
function Packet_Recipes.SetData(value) end

---@return userdata
function Packet_Recipes.GetType() end

---@return string
function Packet_Recipes.ToString() end

---@param obj userdata
---@return boolean
function Packet_Recipes.Equals(obj) end

---@return number
function Packet_Recipes.GetHashCode() end


