---@meta

---@class AmbientManager:  IAmbientManager
---@field BlendedFogColor Vec4f
---@field BlendedAmbientColor Vec3f
---@field BlendedFogDensity number
---@field BlendedFogMin number
---@field BlendedFlatFogDensity number
---@field BlendedFlatFogYOffset number
---@field BlendedCloudBrightness number
---@field BlendedCloudDensity number
---@field BlendedCloudYPos number
---@field BlendedFlatFogYPosForShader number
---@field BlendedSceneBrightness number
---@field BlendedFogBrightness number
---@field CurrentModifiers OrderedDictionary`2
---@field ViewDistance number
---@field Base AmbientModifier
---@field ShadowQuality number
AmbientManager = {}

---@param game ClientMain
---@return AmbientManager
function AmbientManager.ctor(game) end

---@return Vec4f
function AmbientManager.get_BlendedFogColor() end

---@param value Vec4f
function AmbientManager.set_BlendedFogColor(value) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function AmbientManager.get_BlendedAmbientColor() end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function AmbientManager.set_BlendedAmbientColor(value) end

---@return number
function AmbientManager.get_BlendedFogDensity() end

---@param value number
function AmbientManager.set_BlendedFogDensity(value) end

---@return number
function AmbientManager.get_BlendedFogMin() end

---@param value number
function AmbientManager.set_BlendedFogMin(value) end

---@return number
function AmbientManager.get_BlendedFlatFogDensity() end

---@param value number
function AmbientManager.set_BlendedFlatFogDensity(value) end

---@return number
function AmbientManager.get_BlendedFlatFogYOffset() end

---@param value number
function AmbientManager.set_BlendedFlatFogYOffset(value) end

---@return number
function AmbientManager.get_BlendedCloudBrightness() end

---@param value number
function AmbientManager.set_BlendedCloudBrightness(value) end

---@return number
function AmbientManager.get_BlendedCloudDensity() end

---@param value number
function AmbientManager.set_BlendedCloudDensity(value) end

---@return number
function AmbientManager.get_BlendedCloudYPos() end

---@param value number
function AmbientManager.set_BlendedCloudYPos(value) end

---@return number
function AmbientManager.get_BlendedFlatFogYPosForShader() end

---@param value number
function AmbientManager.set_BlendedFlatFogYPosForShader(value) end

---@return number
function AmbientManager.get_BlendedSceneBrightness() end

---@param value number
function AmbientManager.set_BlendedSceneBrightness(value) end

---@return number
function AmbientManager.get_BlendedFogBrightness() end

---@param value number
function AmbientManager.set_BlendedFogBrightness(value) end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function AmbientManager.get_CurrentModifiers() end

---@return number
function AmbientManager.get_ViewDistance() end

---@return AmbientModifier
function AmbientManager.get_Base() end

function AmbientManager.Init() end

---@param density number
---@param min number
function AmbientManager.SetFogRange(density, min) end

---@param dt number
function AmbientManager.UpdateAmbient(dt) end

---@return userdata
function AmbientManager.GetType() end

---@return string
function AmbientManager.ToString() end

---@param obj userdata
---@return boolean
function AmbientManager.Equals(obj) end

---@return number
function AmbientManager.GetHashCode() end


