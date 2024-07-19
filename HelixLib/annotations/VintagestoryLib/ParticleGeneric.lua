---@meta

---@class ParticleGeneric: ParticleBase, ParticleBase
---@field StartingVelocity Vec3f
---@field ParentVelocity Vec3f
---@field ParentVelocityWeight number
---@field SizeMultiplier number
---@field ParticleHeight number
---@field SizeEvolve EvolvingNatFloat
---@field VelocityEvolve EvolvingNatFloat[]
---@field OpacityEvolve EvolvingNatFloat
---@field GreenEvolve EvolvingNatFloat
---@field RedEvolve EvolvingNatFloat
---@field BlueEvolve EvolvingNatFloat
---@field GravityStrength number
---@field TerrainCollision boolean
---@field SelfPropelled boolean
---@field DieInLiquid boolean
---@field DieInAir boolean
---@field DieOnRainHeightmap boolean
---@field SwimOnLiquid boolean
---@field Bounciness number
---@field RandomVelocityChange boolean
---@field SecondaryParticles IParticlePropertiesProvider[]
---@field SecondarySpawnTimers number
---@field DeathParticles IParticlePropertiesProvider[]
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
ParticleGeneric = {}

---@return ParticleGeneric
function ParticleGeneric.ctor() end

---@param lifedt number
---@param pdt number
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param physicsSim ParticlePhysics
function ParticleGeneric.TickNow(lifedt, pdt, api, physicsSim) end

---@param buffer MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param cameraPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param posPosition number
---@param rgbaPosition number
---@param flagPosition number
function ParticleGeneric.UpdateBuffers(buffer, cameraPos, posPosition, rgbaPosition, flagPosition) end

---@param physicsSim ParticlePhysics
function ParticleGeneric.Spawned(physicsSim) end

-- Advances the physics simulation of the particle if "physicsSim.PhysicsTickTime" seconds have passed by, otherwise
-- it will only advance PrevPosition by the particles velocity.
---@param dt number
---@param api ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param physicsSim ParticlePhysics
function ParticleGeneric.TickFixedStep(dt, api, physicsSim) end

---@return userdata
function ParticleGeneric.GetType() end

---@return string
function ParticleGeneric.ToString() end

---@param obj userdata
---@return boolean
function ParticleGeneric.Equals(obj) end

---@return number
function ParticleGeneric.GetHashCode() end


