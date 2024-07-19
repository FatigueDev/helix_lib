---@meta

---@class Particle2D: ParticleBase, ParticleBase
---@field StartingVelocity Vec3f
---@field ParentVelocity Vec3f
---@field ParentVelocityWeight number
---@field randomVelocityChange boolean
---@field SizeMultiplier number
---@field ParticleHeight number
---@field SizeEvolve EvolvingNatFloat
---@field VelocityEvolve EvolvingNatFloat[]
---@field Color number
---@field OpacityEvolve EvolvingNatFloat
---@field Next ParticleBase
---@field Prev ParticleBase
---@field ColorRed number
---@field ColorGreen number
---@field ColorBlue number
---@field ColorAlpha number
---@field VertexFlags number
---@field LifeLength number
---@field SecondsAlive number
---@field Alive boolean
---@field Velocity Vec3f
---@field Position Vec3d
---@field prevPosDeltaX number
---@field prevPosDeltaY number
---@field prevPosDeltaZ number
---@field prevPosAdvance number
---@field lightrgbs number
---@field accum number
Particle2D = {}

---@return Particle2D
function Particle2D.ctor() end

---@param dt number
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param physicsSim ParticlePhysics
function Particle2D.TickFixedStep(dt, api, physicsSim) end

---@param lifedt number
---@param pdt number
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param physicsSim ParticlePhysics
function Particle2D.TickNow(lifedt, pdt, api, physicsSim) end

---@param buffer MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param cameraPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param posPosition number
---@param rgbaPosition number
---@param flagPosition number
function Particle2D.UpdateBuffers(buffer, cameraPos, posPosition, rgbaPosition, flagPosition) end

---@param GravityEffect number
function Particle2D.SetAlive(GravityEffect) end

---@return userdata
function Particle2D.GetType() end

---@return string
function Particle2D.ToString() end

---@param obj userdata
---@return boolean
function Particle2D.Equals(obj) end

---@return number
function Particle2D.GetHashCode() end


