---@meta

-- Special class to handle the vertex flagging in a very nicely compressed space. Bit 0-7: Glow level Bit 8-10: Z-Offset Bit 11: Reflective bit Bit 12: Lod 0 Bit Bit 13-24: X/Y/Z Normals Bit 25, 26, 27, 28: Wind mode Bit 29, 30, 31: Wind data  (also sometimes used for other data, e.g. reflection mode if Reflective bit is set, or additional water surface data if this is a water block)
---@class VertexFlags
---@field All number
---@field GlowLevel number
---@field ZOffset number
---@field Reflective boolean
---@field Lod0 boolean
---@field Normal number
---@field WindMode EnumWindBitMode
---@field WindData number
---@field GlowLevelBitMask number Bit 0..7
---@field ZOffsetBitPos number
---@field ZOffsetBitMask number Bit 8..10
---@field ReflectiveBitMask number Bit 11.   Note if this is set to 1, then WindData has a different meaning, 
---@field Lod0BitMask number Bit 12
---@field NormalBitPos number
---@field NormalBitMask number Bit 13..24
---@field WindModeBitsMask number Bit 25..28
---@field WindModeBitsPos number
---@field WindDataBitsMask number Bit 29..31   Note that WindData is sometimes used for other purposes if WindMode == 0, for example it can hold reflections data, see EnumReflectiveMode. Also worth noting that WindMode and WindData have totally different meanings for liquid water
---@field WindDataBitsPos number
---@field WindBitsMask number Bit 26..31
---@field LiquidWaterModeBitMask number
---@field LiquidExposedToSkyBitMask number
---@field ClearWindBitsMask number
---@field ClearWindModeBitsMask number
---@field ClearWindDataBitsMask number
---@field ClearZOffsetMask number
---@field ClearNormalBitMask number
VertexFlags = {}

---@return VertexFlags
function VertexFlags.ctor() end
---@param flags number
---@return VertexFlags
function VertexFlags.ctor(flags) end

---@return number
function VertexFlags.get_All() end

---@param value number
function VertexFlags.set_All(value) end

-- Creates an already bit shifted normal
---@param normal Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function VertexFlags.PackNormal(normal) end

-- Creates an already bit shifted normal
---@param x number
---@param y number
---@param z number
---@return number
function VertexFlags.PackNormal(x, y, z) end

-- Creates an already bit shifted normal
---@param normal Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return number
function VertexFlags.PackNormal(normal) end

-- Creates an already bit shifted normal
---@param normal Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function VertexFlags.PackNormal(normal) end

---@param vertexFlags number
---@param intoFloats number
function VertexFlags.UnpackNormal(vertexFlags, intoFloats) end

---@param vertexFlags number
---@param intoDouble number
function VertexFlags.UnpackNormal(vertexFlags, intoDouble) end

---@return number
function VertexFlags.get_GlowLevel() end

---@param value number
function VertexFlags.set_GlowLevel(value) end

---@return number
function VertexFlags.get_ZOffset() end

---@param value number
function VertexFlags.set_ZOffset(value) end

---@return boolean
function VertexFlags.get_Reflective() end

---@param value boolean
function VertexFlags.set_Reflective(value) end

---@return boolean
function VertexFlags.get_Lod0() end

---@param value boolean
function VertexFlags.set_Lod0(value) end

---@return number
function VertexFlags.get_Normal() end

---@param value number
function VertexFlags.set_Normal(value) end

---@return EnumWindBitMode
function VertexFlags.get_WindMode() end

---@param value EnumWindBitMode
function VertexFlags.set_WindMode(value) end

---@return number
function VertexFlags.get_WindData() end

---@param value number
function VertexFlags.set_WindData(value) end

-- Clones this set of vertex flags.  
---@return VertexFlags # Special class to handle the vertex flagging in a very nicely compressed space. Bit 0-7: Glow level Bit 8-10: Z-Offset Bit 11: Reflective bit Bit 12: Lod 0 Bit Bit 13-24: X/Y/Z Normals Bit 25, 26, 27, 28: Wind mode Bit 29, 30, 31: Wind data  (also sometimes used for other data, e.g. reflection mode if Reflective bit is set, or additional water surface data if this is a water block)
function VertexFlags.Clone() end

---@return string
function VertexFlags.ToString() end

---@param flags number
---@param windMode number
function VertexFlags.SetWindMode(flags, windMode) end

---@param flags number
---@param windData number
function VertexFlags.SetWindData(flags, windData) end

---@param flags number
---@param windData number
function VertexFlags.ReplaceWindData(flags, windData) end

---@return userdata
function VertexFlags.GetType() end

---@param obj userdata
---@return boolean
function VertexFlags.Equals(obj) end

---@return number
function VertexFlags.GetHashCode() end


