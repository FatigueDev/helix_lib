---@meta

---@class GeneratedStructure
---@field Location Cuboidi Block position of the structure
---@field Code string Code as defined in the WorldGenStructure object
---@field Group string Group as defined in the WorldGenStructure object
---@field SuppressTreesAndShrubs boolean If this flag is set, trees and shrubs will not generate inside the structure's bounding box 
---@field SuppressRivulets boolean If this flag is set, rivulets will not generate inside the structure's bounding box 
GeneratedStructure = {}

---@return GeneratedStructure
function GeneratedStructure.ctor() end

---@return userdata
function GeneratedStructure.GetType() end

---@return string
function GeneratedStructure.ToString() end

---@param obj userdata
---@return boolean
function GeneratedStructure.Equals(obj) end

---@return number
function GeneratedStructure.GetHashCode() end


