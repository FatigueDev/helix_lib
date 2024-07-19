---@meta

---@class JsonTesselator:  IBlockTesselator
---@field helper TerrainMesherHelper
---@field randomRotations number
---@field randomRotMatrices number
---@field reusableIdentityMatrix number
---@field DisableRandomsFlag number
---@field Darkness number
JsonTesselator = {}

---@return JsonTesselator
function JsonTesselator.ctor() end

---@param vars TCTCache
---@return number
function JsonTesselator.SetUpLightRGBs(vars) end

---@param vars TCTCache
function JsonTesselator.Tesselate(vars) end

---@param vars TCTCache
---@param extIndex3d number
---@return boolean
function JsonTesselator.NotSurrounded(vars, extIndex3d) end

---@param vars TCTCache
---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param lodLevel number
function JsonTesselator.doMesh(vars, sourceMesh, lodLevel) end

---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param lodlevel number
---@param vars TCTCache
---@param poolSupplier IMeshPoolSupplier
---@param tfMatrix number
function JsonTesselator.AddJsonModelDataToMesh(sourceMesh, lodlevel, vars, poolSupplier, tfMatrix) end

---@return userdata
function JsonTesselator.GetType() end

---@return string
function JsonTesselator.ToString() end

---@param obj userdata
---@return boolean
function JsonTesselator.Equals(obj) end

---@return number
function JsonTesselator.GetHashCode() end


