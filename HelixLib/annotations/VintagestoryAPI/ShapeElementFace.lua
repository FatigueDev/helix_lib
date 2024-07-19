---@meta

---@class ShapeElementFace
---@field Texture string The texture of the face.
---@field Uv number The UV array of the face.
---@field ReflectiveMode EnumReflectiveMode
---@field WindMode number
---@field WindData number
---@field Rotation number The rotation of the face.
---@field Glow number The glow on the face.
---@field Enabled boolean Whether or not the element is enabled.
ShapeElementFace = {}

---@return ShapeElementFace
function ShapeElementFace.ctor() end

---@return userdata
function ShapeElementFace.GetType() end

---@return string
function ShapeElementFace.ToString() end

---@param obj userdata
---@return boolean
function ShapeElementFace.Equals(obj) end

---@return number
function ShapeElementFace.GetHashCode() end


