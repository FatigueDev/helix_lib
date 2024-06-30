---@meta

-- This is the system that manages the worlds ambient settings, such as fog color/density and clouds. The ambient manager basically blends ambientmodifiers on top of each other to generate the final ambient values. Blending is in order how the modifiers are held in CurrentModifiers in the likes of float weight = modifier.FogMin.Weight; BlendedFogMin = w * modifier.FogMin.Value + (1 - w) * BlendedFogMin;
---@class IAmbientManager
---@field Base AmbientModifier The base value or background ambient to overlay everything onto
---@field CurrentModifiers OrderedDictionary`2 The list of modifiers that result in the blended values
---@field BlendedFogColor Vec4f The blended fog color, calculated every frame from the list of modifiers
---@field BlendedAmbientColor Vec3f The blended ambient color, calculated every frame from the list of modifiers
---@field BlendedFogDensity number The blended fog density, calculated every frame from the list of modifiers
---@field BlendedFogBrightness number
---@field BlendedFlatFogDensity number The blended flat fog density, calculated every frame from the list of modifiers
---@field BlendedFlatFogYOffset number The blended flat fog y-offset, calculated every frame from the list of modifiers
---@field BlendedFlatFogYPosForShader number BlendedFlatFogYPos + SeaLevel - MainCamera.TargetPosition.Y
---@field BlendedFogMin number The blended fog min, calculated every frame from the list of modifiers
---@field BlendedCloudBrightness number The blended cloud brightness, calculated every frame from the list of modifiers
---@field BlendedCloudDensity number The blended cloud density, calculated every frame from the list of modifiers
IAmbientManager = {}


---@return AmbientModifier
function IAmbientManager.get_Base() end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function IAmbientManager.get_CurrentModifiers() end

---@return Vec4f
function IAmbientManager.get_BlendedFogColor() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IAmbientManager.get_BlendedAmbientColor() end

---@return number
function IAmbientManager.get_BlendedFogDensity() end

---@return number
function IAmbientManager.get_BlendedFogBrightness() end

---@return number
function IAmbientManager.get_BlendedFlatFogDensity() end

---@param value number
function IAmbientManager.set_BlendedFlatFogDensity(value) end

---@return number
function IAmbientManager.get_BlendedFlatFogYOffset() end

---@param value number
function IAmbientManager.set_BlendedFlatFogYOffset(value) end

---@return number
function IAmbientManager.get_BlendedFlatFogYPosForShader() end

---@param value number
function IAmbientManager.set_BlendedFlatFogYPosForShader(value) end

---@return number
function IAmbientManager.get_BlendedFogMin() end

---@return number
function IAmbientManager.get_BlendedCloudBrightness() end

---@return number
function IAmbientManager.get_BlendedCloudDensity() end

-- The update loop for this manager. Runs every frame.
---@param dt number
function IAmbientManager.UpdateAmbient(dt) end


