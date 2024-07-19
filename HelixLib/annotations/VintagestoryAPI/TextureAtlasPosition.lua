---@meta

-- The position of a texture inside an atlas
---@class TextureAtlasPosition
---@field atlasTextureId number The OpenGL textureid
---@field atlasNumber number A sequential number in which atlas this position is in. Atlasses for a given type are sequentially numbered if more than one atlas was required to hold all the textures
---@field reloadIteration number A sequential number that goes up with every texture atlas reload, used to see if this texpos is still fresh
---@field AvgColor number
---@field RndColors number
---@field x1 number The x coordinate of the texture origin point
---@field y1 number The y coordinate of the texture origin point
---@field x2 number The x coordinate of the texture end point
---@field y2 number The y coordinate of the texture end point
---@field RndColorsLength number
TextureAtlasPosition = {}

---@return TextureAtlasPosition
function TextureAtlasPosition.ctor() end

---@return TextureAtlasPosition # The position of a texture inside an atlas
function TextureAtlasPosition.Clone() end

---@return userdata
function TextureAtlasPosition.GetType() end

---@return string
function TextureAtlasPosition.ToString() end

---@param obj userdata
---@return boolean
function TextureAtlasPosition.Equals(obj) end

---@return number
function TextureAtlasPosition.GetHashCode() end


