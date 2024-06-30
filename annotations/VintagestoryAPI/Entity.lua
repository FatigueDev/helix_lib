---@meta

-- The basic class for all entities in the game
---@class Entity: RegistryObject, RegistryObject
---@field IsCreature boolean Used by AItasks for perfomance. When searching for nearby entities we distinguish between (A) Creatures and (B) Inanimate entitie. Inanimate entities are items on the ground, projectiles, armor stands, rafts, falling blocks etc Note 1: Dead creatures / corpses count as a Creature. EntityPlayer is a Creature of course. Note 2: Straw Dummy we count as a Creature, because weapons can target it and bees can attack it. In contrast, Armor Stand we count as Inanimate, because nothing should ever attack or target it.
---@field AnimManager IAnimationManager Server simulated animations. Only takes care of stopping animations once they're done Set and Called by the Entities ServerSystem
---@field IsOnFire boolean
---@field Properties EntityProperties
---@field SidedProperties EntitySidedProperties
---@field IsInteractable boolean Should return true when this entity should be interactable by a player or other entities
---@field SwimmingOffsetY number Used for passive physics simulation, together with the MaterialDensity to check how deep in the water the entity should float
---@field Collided boolean CollidedVertically || CollidedHorizontally
---@field SidedPos EntityPos ServerPos on server, Pos on client
---@field LocalEyePos Vec3d The height of the eyes for the given entity.
---@field ApplyGravity boolean If gravity should applied to this entity
---@field MaterialDensity number Determines on whether an entity floats on liquids or not and how strongly items get pushed by water. Water has a density of 1000. A density below 1000 means the entity floats on top of water if has a physics simulation behavior attached to it.
---@field LightHsv number If set, the entity will emit dynamic light
---@field ShouldDespawn boolean If the entity should despawn next server tick. By default returns !Alive for non-creatures and creatures that don't have a Decay behavior
---@field StoreWithChunk boolean Players and whatever the player rides on will be stored seperatly
---@field AlwaysActive boolean Whether this entity should always stay in Active model, regardless on how far away other player are
---@field Alive boolean True if the entity is in state active or inactive, or generally not dead (for non-living entities, 'dead' means ready to despawn)
---@field IdleSoundChanceModifier number
---@field RenderColor number Used by some renderers to apply an overal color tint on the entity
---@field LadderFixDelta number A small offset used to prevent players from clipping through the blocks above ladders: relevant if the entity's collision box is sometimes adjusted by the game code
---@field OnInitialized function
---@field World IWorldAccessor World where the entity is spawned in. Available on the game client and server.
---@field Api ICoreAPI The api, if you need it. Available on the game client and server.
---@field PhysicsUpdateWatcher PhysicsTickDelegate The vanilla physics systems will call this method if a physics behavior was assigned to it. The game client for example requires this to be called for the current player to properly render the player. Available on the game client and server.
---@field ActivityTimers table An uptime value running activities. Available on the game client and server. Not synchronized.
---@field Pos EntityPos Client position
---@field ServerPos EntityPos Server simulated position. May not exactly match the client positon
---@field PreviousServerPos EntityPos Server simulated position copy. Needed by Entities server system to send pos updatess only if ServerPos differs noticably from PreviousServerPos
---@field PositionBeforeFalling Vec3d The position where the entity last had contact with the ground. Set by the game client and server.
---@field InChunkIndex3d number
---@field CollisionBox Cuboidf The entities collision box. Offseted by the animation system when necessary. Set by the game client and server.
---@field OriginCollisionBox Cuboidf The entities collision box. Not Offseted. Set by the game client and server.
---@field SelectionBox Cuboidf The entities selection box. Offseted by the animation system when necessary. Set by the game client and server.
---@field OriginSelectionBox Cuboidf The entities selection box. Not Offseted. Set by the game client and server.
---@field Teleporting boolean Used by the teleporter block
---@field IsTeleport boolean Used by the server to tell connected clients that the next entity position packet should not have its position change get interpolated. Gets set to false after the packet was sent
---@field EntityId number A unique identifier for this entity. Set by the game client and server.
---@field SimulationRange number The range in blocks the entity has to be to a client to do physics and AI. When outside range, then  will be set to inactive
---@field ClimbingOnFace BlockFacing The face the entity is climbing on. Null if the entity is not climbing. Set by the game client and server.
---@field ClimbingIntoFace BlockFacing
---@field ClimbingOnCollBox Cuboidf Set by the game client and server.
---@field OnGround boolean True if this entity is in touch with the ground. Set by the game client and server.
---@field FeetInLiquid boolean True if the bottom of the collisionbox is inside a liquid. Set by the game client and server.
---@field InLava boolean
---@field InLavaBeginTotalMs number
---@field OnFireBeginTotalMs number
---@field Swimming boolean True if the collisionbox is 2/3rds submerged in liquid. Set by the game client and server.
---@field CollidedVertically boolean True if the entity is in touch with something solid on the vertical axis. Set by the game client and server.
---@field CollidedHorizontally boolean True if the entity is in touch with something solid on both horizontal axes. Set by the game client and server.
---@field State EnumEntityState The current entity state. NOT stored in WatchedAttributes in from/tobytes when sending to client as always set to Active on client-side Initialize().  Server-side if saved it would likely initially be Despawned when an entity is first loaded from the save due to entities being despawned during the UnloadChunks process, so let's make it always Despawned for consistent behavior (it will be set to Active/Inactive during Initialize() anyhow)
---@field DespawnReason EntityDespawnData
---@field WatchedAttributes SyncedTreeAttribute Permanently stored entity attributes that are sent to client everytime they have been changed
---@field DebugAttributes SyncedTreeAttribute If entity debug mode is on, this info will be transitted to client and displayed above the entities head
---@field Attributes SyncedTreeAttribute Permanently stored entity attributes that are only client or only server side
---@field IsRendered boolean Set by the client renderer when the entity was rendered last frame
---@field IsShadowRendered boolean Set by the client renderer when the entity shadow was rendered last frame
---@field Stats EntityStats
---@field touchDistanceSq number
---@field ownPosRepulse Vec3d
---@field hasRepulseBehavior boolean
---@field packet userdata Used for efficiency in multi-player servers, to avoid regenerating the packet again for each connected client
---@field minRangeToClient number
---@field SplashParticleProps WaterSplashParticles
---@field FireParticleProps AdvancedParticleProperties[]
---@field FloatingSedimentParticles FloatingSedimentParticles
---@field AirBubbleParticleProps AirBubbleParticles
---@field bioLumiParticles SimpleParticleProperties
---@field bioLumiNoise NormalizedSimplexNoise
---@field Code AssetLocation A unique domain + code of the object. Must be globally unique for all items / all blocks / all entities.
---@field VariantStrict OrderedDictionary`2 Variant values as resolved from blocktype/itemtype.  NOT set for entities - use entity.Properties.VariantStrict instead.
---@field Variant RelaxedReadOnlyDictionary`2 Variant values as resolved from blocktype/itemtype. Will not throw an null pointer exception when the key does not exist, but return null instead. NOT set for entities - use entity.Properties.Variant instead
---@field Class string The class handeling the object
Entity = {}

---@return Entity
function Entity.ctor() end

---@param value function
function Entity.add_OnInitialized(value) end

---@param value function
function Entity.remove_OnInitialized(value) end

---@return boolean
function Entity.get_IsCreature() end

---@return IAnimationManager # Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function Entity.get_AnimManager() end

---@param value IAnimationManager Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function Entity.set_AnimManager(value) end

---@return boolean
function Entity.get_IsOnFire() end

---@param value boolean
function Entity.set_IsOnFire(value) end

---@return EntityProperties
function Entity.get_Properties() end

---@return EntitySidedProperties
function Entity.get_SidedProperties() end

---@return boolean
function Entity.get_IsInteractable() end

---@return number
function Entity.get_SwimmingOffsetY() end

---@return boolean
function Entity.get_Collided() end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function Entity.get_SidedPos() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Entity.get_LocalEyePos() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Entity.set_LocalEyePos(value) end

---@return boolean
function Entity.get_ApplyGravity() end

---@return number
function Entity.get_MaterialDensity() end

---@return number
function Entity.get_LightHsv() end

---@param value number
function Entity.set_LightHsv(value) end

---@return boolean
function Entity.get_ShouldDespawn() end

---@return boolean
function Entity.get_StoreWithChunk() end

---@return boolean
function Entity.get_AlwaysActive() end

---@return boolean
function Entity.get_Alive() end

---@param value boolean
function Entity.set_Alive(value) end

---@return number
function Entity.get_IdleSoundChanceModifier() end

---@param value number
function Entity.set_IdleSoundChanceModifier(value) end

---@return number
function Entity.get_RenderColor() end

---@return number
function Entity.get_LadderFixDelta() end

-- Called when the entity got hurt. On the client side, dmgSource is null
---@param dmgSource DamageSource
---@param damage number
function Entity.OnHurt(dmgSource, damage) end

-- Called when this entity got created or loaded
---@param properties EntityProperties
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param InChunkIndex3d number
function Entity.Initialize(properties, api, InChunkIndex3d) end

---@param onFirstSpawn boolean
function Entity.AfterInitialized(onFirstSpawn) end

-- Called when something tries to given an itemstack to this entity
---@param itemstack ItemStack
---@return boolean
function Entity.TryGiveItemStack(itemstack) end

-- Is called before the entity is killed, should return what items this entity should drop. Return null or empty array for no drops.
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@return ItemStack[]
function Entity.GetDrops(world, pos, byPlayer) end

-- Teleports the entity to given position. Actual teleport is delayed until target chunk is loaded.
---@param x number
---@param y number
---@param z number
---@param onTeleported? function
function Entity.TeleportToDouble(x, y, z, onTeleported) end

-- Teleports the entity to given position
---@param x number
---@param y number
---@param z number
function Entity.TeleportTo(x, y, z) end

-- Teleports the entity to given position
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function Entity.TeleportTo(position) end

-- Teleports the entity to given position
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Entity.TeleportTo(position) end

-- Teleports the entity to given position
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param onTeleported? function
function Entity.TeleportTo(position, onTeleported) end

-- Called when the entity should be receiving damage from given source
---@param damageSource DamageSource
---@param damage number
---@return boolean
function Entity.ReceiveDamage(damageSource, damage) end

-- Should return true if the entity can get damaged by given damageSource. Is called by ReceiveDamage.
---@param damageSource DamageSource
---@param damage number
---@return boolean
function Entity.ShouldReceiveDamage(damageSource, damage) end

-- Called every 1/75 second
---@param dt number
function Entity.OnGameTick(dt) end

---@param dt number
---@param manager IAsyncParticleManager
function Entity.OnAsyncParticleTick(dt, manager) end

function Entity.Ignite() end

---@param entityShape Shape&
---@param shapePathForLogging string
function Entity.OnTesselation(entityShape, shapePathForLogging) end

-- Called when the entity collided vertically
---@param motionY number
function Entity.OnFallToGround(motionY) end

-- Called when the entity collided with something solid and Collided was false before
function Entity.OnCollided() end

-- Called when the entity got in touch with a liquid
function Entity.OnCollideWithLiquid() end

-- Called when after the got loaded from the savegame (not called during spawn)
function Entity.OnEntityLoaded() end

-- Called when the entity spawns (not called when loaded from the savegame).
function Entity.OnEntitySpawn() end

-- Called when the entity despawns
---@param despawn EntityDespawnData
function Entity.OnEntityDespawn(despawn) end

-- Called when the entity has left a liquid
function Entity.OnExitedLiquid() end

-- Called when an entity has interacted with this entity
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param itemslot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode EnumInteractMode
function Entity.OnInteract(byEntity, itemslot, hitPosition, mode) end

-- Called when a player looks at the entity with interaction help enabled
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param es EntitySelection
---@param player IClientPlayer A client side player
---@return WorldInteraction[]
function Entity.GetInteractionHelp(world, es, player) end

-- Called by client when a new server pos arrived
---@param isTeleport boolean
function Entity.OnReceivedServerPos(isTeleport) end

-- Called when on the client side something called capi.Network.SendEntityPacket()
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packetid number
---@param data number
function Entity.OnReceivedClientPacket(player, packetid, data) end

-- Called when on the server side something called sapi.Network.SendEntityPacket()
-- Packetid = 1 is used for teleporting
-- Packetid = 2 is used for BehaviorHarvestable
---@param packetid number
---@param data number
function Entity.OnReceivedServerPacket(packetid, data) end

---@param activeAnimations number
---@param activeAnimationsCount number
---@param activeAnimationSpeeds number
function Entity.OnReceivedServerAnimations(activeAnimations, activeAnimationsCount, activeAnimationSpeeds) end

-- Called by BehaviorCollectEntities of nearby entities. Should return the itemstack that should be collected. If the item stack was fully picked up, BehaviorCollectEntities will kill this entity
---@param byEntity Entity The basic class for all entities in the game
---@return ItemStack
function Entity.OnCollected(byEntity) end

-- Called on the server when the entity was changed from active to inactive state or vice versa
---@param beforeState EnumEntityState
function Entity.OnStateChanged(beforeState) end

-- Helper method to set the CollisionBox
---@param length number
---@param height number
function Entity.SetCollisionBox(length, height) end

---@param length number
---@param height number
function Entity.SetSelectionBox(length, height) end

-- Adds given behavior to the entities list of active behaviors
---@param behavior EntityBehavior Defines a basic entity behavior that can be attached to entities
function Entity.AddBehavior(behavior) end

-- Removes given behavior to the entities list of active behaviors. Does nothing if the behavior has already been removed
---@param behavior EntityBehavior Defines a basic entity behavior that can be attached to entities
function Entity.RemoveBehavior(behavior) end

-- Returns true if the entity has given active behavior
---@param behaviorName string
---@return boolean
function Entity.HasBehavior(behaviorName) end

---@return boolean
function Entity.HasBehavior() end

-- Returns the behavior instance for given entity. Returns null if it doesn't exist.
---@param name string
---@return EntityBehavior # Defines a basic entity behavior that can be attached to entities
function Entity.GetBehavior(name) end

---@return T
function Entity.GetBehavior() end

-- Returns true if given activity is running
---@param key string
---@return boolean
function Entity.IsActivityRunning(key) end

-- Returns the remaining time on an activity in milliesconds
---@param key string
---@return number
function Entity.RemainingActivityTime(key) end

-- Starts an activity for a given duration
---@param key string
---@param milliseconds number
function Entity.SetActivityRunning(key, milliseconds) end

-- Updates the DebugAttributes tree
function Entity.UpdateDebugAttributes() end

-- In order to maintain legacy mod API compatibility of FromBytes(BinaryReader reader, bool isSync), we create an overload which server-side calling code will actually call, and store the remaps parameter in a field
---@param reader BinaryReader
---@param isSync boolean
---@param serversideRemaps table
function Entity.FromBytes(reader, isSync, serversideRemaps) end

-- Loads the entity from a stored byte array from the SaveGame
---@param reader BinaryReader
---@param isSync boolean
function Entity.FromBytes(reader, isSync) end

-- Serializes the slots contents to be stored in the SaveGame
---@param writer BinaryWriter
---@param forClient boolean
function Entity.ToBytes(writer, forClient) end

-- Revives the entity and heals for 9999.
function Entity.Revive() end

-- Makes the entity despawn. Entities only drop something on EnumDespawnReason.Death
---@param reason? EnumDespawnReason
---@param damageSourceForDeath? DamageSource
function Entity.Die(reason, damageSourceForDeath) end

-- Assumes that it is only called on the server
---@param type string
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
function Entity.PlayEntitySound(type, dualCallByPlayer, randomizePitch, range) end

-- Should return true if this item can be picked up as an itemstack
---@param byEntity Entity The basic class for all entities in the game
---@return boolean
function Entity.CanCollect(byEntity) end

-- This method pings the Notify() method of all behaviors and ai tasks. Can be used to spread information to other creatures.
---@param key string
---@param data userdata
function Entity.Notify(key, data) end

-- This method is called by the BlockSchematic class a moment before a schematic containing this entity is getting exported.
-- Since a schematic can be placed anywhere in the world, this method has to make sure the entities position is set to a value
-- relative of the schematic origin point defined by startPos
-- Right after calling this method, the world edit system will call .ToBytes() to serialize the entity
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Entity.WillExport(startPos) end

-- This method is called by the BlockSchematic class a moment after a schematic containing this entity has been exported. 
-- Since a schematic can be placed anywhere in the world, this method has to make sure the entities position is set to the correct 
-- position in relation to the target position of the schematic to be imported.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function Entity.DidImportOrExport(startPos) end

-- Called by the worldedit schematic exporter so that it can also export the mappings of items/blocks stored inside blockentities
---@param blockIdMapping table
---@param itemIdMapping table
function Entity.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

-- Called by the blockschematic loader so that you may fix any blockid/itemid mappings against the mapping of the savegame, if you store any collectibles in this blockentity.
-- Note: Some vanilla blocks resolve randomized contents in this method.
-- Hint: Use itemstack.FixMapping() to do the job for you.
---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
function Entity.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed) end

-- Called by the blockschematic loader so that you may fix any blockid/itemid mappings against the mapping of the savegame, if you store any collectibles in this blockentity.
-- Note: Some vanilla blocks resolve randomized contents in this method.
-- Hint: Use itemstack.FixMapping() to do the job for you.
---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
---@param resolveImports boolean
function Entity.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed, resolveImports) end

-- Gets the name for this entity
---@return string
function Entity.GetName() end

-- gets the info text for the entity.
---@return string
function Entity.GetInfoText() end

-- Starts the animation for the entity.
---@param code string
function Entity.StartAnimation(code) end

-- stops the animation for the entity.
---@param code string
function Entity.StopAnimation(code) end

-- Returns a new assetlocation with an equal domain and the given path
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Entity.CodeWithPath(path) end

-- Removes componentsToRemove parts from the blocks code end by splitting it up at every occurence of a dash ('-'). Right to left.
---@param componentsToRemove number
---@return string
function Entity.CodeWithoutParts(componentsToRemove) end

-- Removes componentsToRemove parts from the blocks code beginning by splitting it up at every occurence of a dash ('-'). Left to Right
---@param componentsToRemove number
---@return string
function Entity.CodeEndWithoutParts(componentsToRemove) end

-- Replaces the last parts from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param components string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Entity.CodeWithParts(components) end

-- More efficient version of CodeWithParts if there is only a single parameter
---@param component string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Entity.CodeWithParts(component) end

---@param type string
---@param value string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Entity.CodeWithVariant(type, value) end

---@param valuesByType table
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Entity.CodeWithVariants(valuesByType) end

---@param types string
---@param values string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Entity.CodeWithVariants(types, values) end

-- Replaces one part from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param part string
---@param atPosition? number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function Entity.CodeWithPart(part, atPosition) end

-- Returns the n-th code part in inverse order. If the code contains no dash ('-') the whole code is returned. Returns null if posFromRight is too high.
---@param posFromRight? number
---@return string
function Entity.LastCodePart(posFromRight) end

-- Returns the n-th code part. If the code contains no dash ('-') the whole code is returned. Returns null if posFromLeft is too high.
---@param posFromLeft? number
---@return string
function Entity.FirstCodePart(posFromLeft) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards AssetLocation[] Defines a complete path to an assets, including it's domain
---@return boolean
function Entity.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function Entity.WildCardMatch(wildCard) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards string
---@return boolean
function Entity.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard string
---@return boolean
function Entity.WildCardMatch(wildCard) end

---@return userdata
function Entity.GetType() end

---@return string
function Entity.ToString() end

---@param obj userdata
---@return boolean
function Entity.Equals(obj) end

---@return number
function Entity.GetHashCode() end


