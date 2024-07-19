---@meta

---@class RawTexture
---@field MinFilter EnumTextureFilter
---@field MagFilter EnumTextureFilter
---@field WrapS EnumTextureWrap
---@field WrapT EnumTextureWrap
---@field PixelInternalFormat EnumTextureInternalFormat
---@field PixelFormat EnumTexturePixelFormat
---@field Width number
---@field Height number
---@field TextureId number
RawTexture = {}

---@return RawTexture
function RawTexture.ctor() end

---@return userdata
function RawTexture.GetType() end

---@return string
function RawTexture.ToString() end

---@param obj userdata
---@return boolean
function RawTexture.Equals(obj) end

---@return number
function RawTexture.GetHashCode() end


