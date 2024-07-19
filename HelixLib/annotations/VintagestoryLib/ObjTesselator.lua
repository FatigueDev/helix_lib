---@meta

---@class ObjTesselator
ObjTesselator = {}

---@return ObjTesselator
function ObjTesselator.ctor() end

---@param asset IAsset Represents a loaded asset from the assets folder
---@param mesh MeshData&
---@param pos TextureAtlasPosition The position of a texture inside an atlas
---@param meta TesselationMetaData
---@param renderPass number
function ObjTesselator.Load(asset, mesh, pos, meta, renderPass) end

---@return userdata
function ObjTesselator.GetType() end

---@return string
function ObjTesselator.ToString() end

---@param obj userdata
---@return boolean
function ObjTesselator.Equals(obj) end

---@return number
function ObjTesselator.GetHashCode() end


