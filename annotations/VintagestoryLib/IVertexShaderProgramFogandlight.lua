---@meta

---@class IVertexShaderProgramFogandlight
---@field FlatFogDensity number
---@field FlatFogStart number
---@field ViewDistance number
---@field ViewDistanceLod0 number
---@field GlitchStrengthFL number
---@field NightVisionStrength number
---@field PointLights Vec3f
---@field PointLightColors Vec3f
---@field PointLightQuantity number
IVertexShaderProgramFogandlight = {}


---@param value number
function IVertexShaderProgramFogandlight.set_FlatFogDensity(value) end

---@param value number
function IVertexShaderProgramFogandlight.set_FlatFogStart(value) end

---@param value number
function IVertexShaderProgramFogandlight.set_ViewDistance(value) end

---@param value number
function IVertexShaderProgramFogandlight.set_ViewDistanceLod0(value) end

---@param value number
function IVertexShaderProgramFogandlight.set_GlitchStrengthFL(value) end

---@param value number
function IVertexShaderProgramFogandlight.set_NightVisionStrength(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IVertexShaderProgramFogandlight.set_PointLights(value) end

---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IVertexShaderProgramFogandlight.set_PointLightColors(value) end

---@param value number
function IVertexShaderProgramFogandlight.set_PointLightQuantity(value) end


