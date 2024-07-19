---@meta

-- Represents a particle that has been spawned
---@class ParticleBase
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
ParticleBase = {}


-- Advances the physics simulation of the particle if "physicsSim.PhysicsTickTime" seconds have passed by, otherwise
-- it will only advance PrevPosition by the particles velocity.
---@param dt number
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param physicsSim ParticlePhysics
function ParticleBase.TickFixedStep(dt, api, physicsSim) end

---@param dt number
---@param physicsdt number
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param physicsSim ParticlePhysics
function ParticleBase.TickNow(dt, physicsdt, api, physicsSim) end

---@param buffer MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param cameraPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param posPosition number
---@param rgbaPosition number
---@param flagPosition number
function ParticleBase.UpdateBuffers(buffer, cameraPos, posPosition, rgbaPosition, flagPosition) end

---@return userdata
function ParticleBase.GetType() end

---@return string
function ParticleBase.ToString() end

---@param obj userdata
---@return boolean
function ParticleBase.Equals(obj) end

---@return number
function ParticleBase.GetHashCode() end


