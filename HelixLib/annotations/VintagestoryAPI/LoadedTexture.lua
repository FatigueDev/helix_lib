---@meta

-- A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@class LoadedTexture:  IDisposable
---@field Disposed boolean
---@field IgnoreUndisposed boolean Set this only you really know what you're doing
---@field TextureId number The OpenGL Texture Id
---@field Width number Width of the texture.
---@field Height number Height of the texture.
LoadedTexture = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return LoadedTexture
function LoadedTexture.ctor(capi) end
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param textureId number
---@param width number
---@param height number
---@return LoadedTexture
function LoadedTexture.ctor(capi, textureId, width, height) end

---@return boolean
function LoadedTexture.get_Disposed() end

---@return boolean
function LoadedTexture.get_IgnoreUndisposed() end

---@param value boolean
function LoadedTexture.set_IgnoreUndisposed(value) end

-- Disposes of the loaded texture safely.
function LoadedTexture.Dispose() end

---@return userdata
function LoadedTexture.GetType() end

---@return string
function LoadedTexture.ToString() end

---@param obj userdata
---@return boolean
function LoadedTexture.Equals(obj) end

---@return number
function LoadedTexture.GetHashCode() end


