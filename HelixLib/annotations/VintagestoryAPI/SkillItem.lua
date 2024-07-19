---@meta

---@class SkillItem:  IDisposable
---@field Name string
---@field Description string
---@field Code AssetLocation
---@field Texture LoadedTexture
---@field Hotkey KeyCombination
---@field Linebreak boolean
---@field Enabled boolean
---@field RenderHandler RenderSkillItemDelegate
---@field Data userdata
---@field TexturePremultipliedAlpha boolean
SkillItem = {}

---@return SkillItem
function SkillItem.ctor() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param onDrawIcon DrawSkillIconDelegate
---@return SkillItem
function SkillItem.WithIcon(capi, onDrawIcon) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param iconCode string
---@return SkillItem
function SkillItem.WithIcon(capi, iconCode) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param letter string
---@return SkillItem
function SkillItem.WithLetterIcon(capi, letter) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param texture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@return SkillItem
function SkillItem.WithIcon(capi, texture) end

function SkillItem.Dispose() end

---@return userdata
function SkillItem.GetType() end

---@return string
function SkillItem.ToString() end

---@param obj userdata
---@return boolean
function SkillItem.Equals(obj) end

---@return number
function SkillItem.GetHashCode() end


