---@meta

-- The world accessor implemented by the client, offers some extra features only available on the client
---@class IClientWorldAccessor:  IWorldAccessor
---@field Calendar IClientGameCalendar Interface to access the game calendar
---@field ForceLiquidSelectable boolean Whether the player can select liquids
---@field AmbientParticles boolean Whether to spawn ambient particles
---@field Player IClientPlayer Returns the player running this client instance
---@field LoadedEntities table The internal cache of all currently loaded entities. Warning: You should not set or remove anything from this dic unless you *really* know what you're doing. Use SpawnEntity/DespawnEntity instead.
---@field Dimensions table
IClientWorldAccessor = {}


---@param block Block Basic class for a placeable block
---@param posX number
---@param posY number
---@param posZ number
---@return ColorMapData
function IClientWorldAccessor.GetColorMapData(block, posX, posY, posZ) end

---@return IClientGameCalendar
function IClientWorldAccessor.get_Calendar() end

-- Loads the rgb climate and season color map value at given position and multiplies it byte-wise with supplied color
---@param climateColorMap string
---@param seasonColorMap string
---@param color number
---@param posX number
---@param posY number
---@param posZ number
---@param flipRb? boolean
---@return number
function IClientWorldAccessor.ApplyColorMapOnRgba(climateColorMap, seasonColorMap, color, posX, posY, posZ, flipRb) end

---@param climateColorMap ColorMap
---@param seasonColorMap ColorMap
---@param color number
---@param posX number
---@param posY number
---@param posZ number
---@param flipRb? boolean
---@return number
function IClientWorldAccessor.ApplyColorMapOnRgba(climateColorMap, seasonColorMap, color, posX, posY, posZ, flipRb) end

-- Loads the rgb climate and season color map value for given rain and temp value and multiplies it byte-wise with supplied color
---@param climateColorMap string
---@param seasonColorMap string
---@param color number
---@param rain number
---@param temp number
---@param flipRb? boolean
---@return number
function IClientWorldAccessor.ApplyColorMapOnRgba(climateColorMap, seasonColorMap, color, rain, temp, flipRb) end

---@return boolean
function IClientWorldAccessor.get_ForceLiquidSelectable() end

---@param value boolean
function IClientWorldAccessor.set_ForceLiquidSelectable(value) end

---@return boolean
function IClientWorldAccessor.get_AmbientParticles() end

---@param value boolean
function IClientWorldAccessor.set_AmbientParticles(value) end

---@return IClientPlayer # A client side player
function IClientWorldAccessor.get_Player() end

-- Loads a sounds without playing it. Use to individually control when to play/stop. Might want to set DisposeOnFinish to false but then you have to dispose it yourself. 
---@param param SoundParams The sound paramaters used for loading sounds on the client side
---@return ILoadedSound # Represents a loaded game sound 
function IClientWorldAccessor.LoadSound(param) end

-- Shakes the camera view by given strength
---@param strengh number
function IClientWorldAccessor.AddCameraShake(strengh) end

---@param strengh number
function IClientWorldAccessor.SetCameraShake(strengh) end

---@param amount number
function IClientWorldAccessor.ReduceCameraShake(amount) end

-- Same effect as when player left-click breaks a block, but will not cause actual breakage of the block
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param withTool Nullable`1
---@param damage number
function IClientWorldAccessor.IncurBlockDamage(blockSelection, withTool, damage) end

-- Applies the same damage overlay effect on the target as the source has
---@param sourcePos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param targetPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IClientWorldAccessor.CloneBlockDamage(sourcePos, targetPos) end

-- Makes an attempt to attack a particular entity.
---@param sele EntitySelection
function IClientWorldAccessor.TryAttackEntity(sele) end

---@return table
function IClientWorldAccessor.get_LoadedEntities() end

---@return table
function IClientWorldAccessor.get_Dimensions() end

---@param dimId number
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return IMiniDimension # Provides read/write access to the blocks of a movable mini-dimension. 
function IClientWorldAccessor.GetOrCreateDimension(dimId, pos) end

---@param origin Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param dimension IMiniDimension&
---@return boolean
function IClientWorldAccessor.TryGetMiniDimension(origin, dimension) end

---@param dimId number
function IClientWorldAccessor.SetBlocksPreviewDimension(dimId) end

-- Exactly like PlaySoundAt except that it returns the duration of the played sound.  (We don't want to change the method signature of PlaySoundAt for API mod breakage reasons)
---@param sound AssetLocation Defines a complete path to an assets, including it's domain
---@param x number
---@param y number
---@param z number
---@param ignorePlayerUid? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
---@param volume? number
---@return number
function IClientWorldAccessor.PlaySoundAtAndGetDuration(sound, x, y, z, ignorePlayerUid, randomizePitch, range, volume) end


