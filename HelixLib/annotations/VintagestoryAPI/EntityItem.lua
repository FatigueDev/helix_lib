---@meta

---@class EntityItem: Entity, RegistryObject, Entity
---@field Itemstack ItemStack The itemstack attached to this Item Entity.
---@field ByPlayerUid string The UID of the player that dropped this itemstack.
---@field MaterialDensity number Returns the material density of the item.
---@field IsInteractable boolean Whether or not the EntityItem is interactable.
---@field LightHsv number Get the HSV colors for the lighting.
---@field SwimmingOffsetY number
---@field IsCreature boolean Used by AItasks for perfomance. When searching for nearby entities we distinguish between (A) Creatures and (B) Inanimate entitie. Inanimate entities are items on the ground, projectiles, armor stands, rafts, falling blocks etc Note 1: Dead creatures / corpses count as a Creature. EntityPlayer is a Creature of course. Note 2: Straw Dummy we count as a Creature, because weapons can target it and bees can attack it. In contrast, Armor Stand we count as Inanimate, because nothing should ever attack or target it.
---@field AnimManager IAnimationManager Server simulated animations. Only takes care of stopping animations once they're done Set and Called by the Entities ServerSystem
---@field IsOnFire boolean
---@field Properties EntityProperties
---@field SidedProperties EntitySidedProperties
---@field Collided boolean CollidedVertically || CollidedHorizontally
---@field SidedPos EntityPos ServerPos on server, Pos on client
---@field LocalEyePos Vec3d The height of the eyes for the given entity.
---@field ApplyGravity boolean If gravity should applied to this entity
---@field ShouldDespawn boolean If the entity should despawn next server tick. By default returns !Alive for non-creatures and creatures that don't have a Decay behavior
---@field StoreWithChunk boolean Players and whatever the player rides on will be stored seperatly
---@field AlwaysActive boolean Whether this entity should always stay in Active model, regardless on how far away other player are
---@field Alive boolean True if the entity is in state active or inactive, or generally not dead (for non-living entities, 'dead' means ready to despawn)
---@field IdleSoundChanceModifier number
---@field RenderColor number Used by some renderers to apply an overal color tint on the entity
---@field LadderFixDelta number A small offset used to prevent players from clipping through the blocks above ladders: relevant if the entity's collision box is sometimes adjusted by the game code
---@field OnInitialized function
---@field Slot EntityItemSlot
---@field itemSpawnedMilliseconds number
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
---@field Code AssetLocation A unique domain + code of the object. Must be globally unique for all items / all blocks / all entities.
---@field VariantStrict OrderedDictionary`2 Variant values as resolved from blocktype/itemtype.  NOT set for entities - use entity.Properties.VariantStrict instead.
---@field Variant RelaxedReadOnlyDictionary`2 Variant values as resolved from blocktype/itemtype. Will not throw an null pointer exception when the key does not exist, but return null instead. NOT set for entities - use entity.Properties.Variant instead
---@field Class string The class handeling the object
EntityItem = {}

---@return EntityItem
function EntityItem.ctor() end

---@return ItemStack
function EntityItem.get_Itemstack() end

---@param value ItemStack
function EntityItem.set_Itemstack(value) end

---@return string
function EntityItem.get_ByPlayerUid() end

---@param value string
function EntityItem.set_ByPlayerUid(value) end

---@return number
function EntityItem.get_MaterialDensity() end

---@return boolean
function EntityItem.get_IsInteractable() end

---@return number
function EntityItem.get_LightHsv() end

---@param properties EntityProperties
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param chunkindex3d number
function EntityItem.Initialize(properties, api, chunkindex3d) end

---@param dt number
function EntityItem.OnGameTick(dt) end

---@param despawn EntityDespawnData
function EntityItem.OnEntityDespawn(despawn) end

---@param activeAnimations number
---@param activeAnimationsCount number
---@param activeAnimationSpeeds number
function EntityItem.OnReceivedServerAnimations(activeAnimations, activeAnimationsCount, activeAnimationSpeeds) end

function EntityItem.UpdateDebugAttributes() end

---@param code string
function EntityItem.StartAnimation(code) end

---@param code string
function EntityItem.StopAnimation(code) end

---@param reason? EnumDespawnReason
---@param damageSourceForDeath? DamageSource
function EntityItem.Die(reason, damageSourceForDeath) end

-- Builds and spawns an EntityItem from a provided ItemStack.
---@param itemstack ItemStack
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param velocity Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param world IWorldAccessor Important interface to access the game world.
---@return EntityItem
function EntityItem.FromItemstack(itemstack, position, velocity, world) end

---@param byEntity Entity The basic class for all entities in the game
---@return boolean
function EntityItem.CanCollect(byEntity) end

---@param byEntity Entity The basic class for all entities in the game
---@return ItemStack
function EntityItem.OnCollected(byEntity) end

function EntityItem.OnCollideWithLiquid() end

---@param damageSource DamageSource
---@param damage number
---@return boolean
function EntityItem.ShouldReceiveDamage(damageSource, damage) end

---@param damageSource DamageSource
---@param damage number
---@return boolean
function EntityItem.ReceiveDamage(damageSource, damage) end

---@param reader BinaryReader
---@param forClient boolean
function EntityItem.FromBytes(reader, forClient) end

---@return number
function EntityItem.get_SwimmingOffsetY() end

---@param value function
function EntityItem.add_OnInitialized(value) end

---@param value function
function EntityItem.remove_OnInitialized(value) end

---@return boolean
function EntityItem.get_IsCreature() end

---@return IAnimationManager # Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function EntityItem.get_AnimManager() end

---@param value IAnimationManager Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function EntityItem.set_AnimManager(value) end

---@return boolean
function EntityItem.get_IsOnFire() end

---@param value boolean
function EntityItem.set_IsOnFire(value) end

---@return EntityProperties
function EntityItem.get_Properties() end

---@return EntitySidedProperties
function EntityItem.get_SidedProperties() end

---@return boolean
function EntityItem.get_Collided() end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityItem.get_SidedPos() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityItem.get_LocalEyePos() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityItem.set_LocalEyePos(value) end

---@return boolean
function EntityItem.get_ApplyGravity() end

---@param value number
function EntityItem.set_LightHsv(value) end

---@return boolean
function EntityItem.get_ShouldDespawn() end

---@return boolean
function EntityItem.get_StoreWithChunk() end

---@return boolean
function EntityItem.get_AlwaysActive() end

---@return boolean
function EntityItem.get_Alive() end

---@param value boolean
function EntityItem.set_Alive(value) end

---@return number
function EntityItem.get_IdleSoundChanceModifier() end

---@param value number
function EntityItem.set_IdleSoundChanceModifier(value) end

---@return number
function EntityItem.get_RenderColor() end

---@return number
function EntityItem.get_LadderFixDelta() end

-- Called when the entity got hurt. On the client side, dmgSource is null
---@param dmgSource DamageSource
---@param damage number
function EntityItem.OnHurt(dmgSource, damage) end

---@param onFirstSpawn boolean
function EntityItem.AfterInitialized(onFirstSpawn) end

-- Called when something tries to given an itemstack to this entity
---@param itemstack ItemStack
---@return boolean
function EntityItem.TryGiveItemStack(itemstack) end

-- Is called before the entity is killed, should return what items this entity should drop. Return null or empty array for no drops.
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@return ItemStack[]
function EntityItem.GetDrops(world, pos, byPlayer) end

-- Teleports the entity to given position. Actual teleport is delayed until target chunk is loaded.
---@param x number
---@param y number
---@param z number
---@param onTeleported? function
function EntityItem.TeleportToDouble(x, y, z, onTeleported) end

-- Teleports the entity to given position
---@param x number
---@param y number
---@param z number
function EntityItem.TeleportTo(x, y, z) end

-- Teleports the entity to given position
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityItem.TeleportTo(position) end

-- Teleports the entity to given position
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function EntityItem.TeleportTo(position) end

-- Teleports the entity to given position
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param onTeleported? function
function EntityItem.TeleportTo(position, onTeleported) end

---@param dt number
---@param manager IAsyncParticleManager
function EntityItem.OnAsyncParticleTick(dt, manager) end

function EntityItem.Ignite() end

---@param entityShape Shape&
---@param shapePathForLogging string
function EntityItem.OnTesselation(entityShape, shapePathForLogging) end

-- Called when the entity collided vertically
---@param motionY number
function EntityItem.OnFallToGround(motionY) end

-- Called when the entity collided with something solid and Collided was false before
function EntityItem.OnCollided() end

-- Called when after the got loaded from the savegame (not called during spawn)
function EntityItem.OnEntityLoaded() end

-- Called when the entity spawns (not called when loaded from the savegame).
function EntityItem.OnEntitySpawn() end

-- Called when the entity has left a liquid
function EntityItem.OnExitedLiquid() end

-- Called when an entity has interacted with this entity
---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param itemslot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode EnumInteractMode
function EntityItem.OnInteract(byEntity, itemslot, hitPosition, mode) end

-- Called when a player looks at the entity with interaction help enabled
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param es EntitySelection
---@param player IClientPlayer A client side player
---@return WorldInteraction[]
function EntityItem.GetInteractionHelp(world, es, player) end

-- Called by client when a new server pos arrived
---@param isTeleport boolean
function EntityItem.OnReceivedServerPos(isTeleport) end

-- Called when on the client side something called capi.Network.SendEntityPacket()
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packetid number
---@param data number
function EntityItem.OnReceivedClientPacket(player, packetid, data) end

-- Called when on the server side something called sapi.Network.SendEntityPacket()
-- Packetid = 1 is used for teleporting
-- Packetid = 2 is used for BehaviorHarvestable
---@param packetid number
---@param data number
function EntityItem.OnReceivedServerPacket(packetid, data) end

-- Called on the server when the entity was changed from active to inactive state or vice versa
---@param beforeState EnumEntityState
function EntityItem.OnStateChanged(beforeState) end

-- Helper method to set the CollisionBox
---@param length number
---@param height number
function EntityItem.SetCollisionBox(length, height) end

---@param length number
---@param height number
function EntityItem.SetSelectionBox(length, height) end

-- Adds given behavior to the entities list of active behaviors
---@param behavior EntityBehavior Defines a basic entity behavior that can be attached to entities
function EntityItem.AddBehavior(behavior) end

-- Removes given behavior to the entities list of active behaviors. Does nothing if the behavior has already been removed
---@param behavior EntityBehavior Defines a basic entity behavior that can be attached to entities
function EntityItem.RemoveBehavior(behavior) end

-- Returns true if the entity has given active behavior
---@param behaviorName string
---@return boolean
function EntityItem.HasBehavior(behaviorName) end

---@return boolean
function EntityItem.HasBehavior() end

-- Returns the behavior instance for given entity. Returns null if it doesn't exist.
---@param name string
---@return EntityBehavior # Defines a basic entity behavior that can be attached to entities
function EntityItem.GetBehavior(name) end

---@return T
function EntityItem.GetBehavior() end

-- Returns true if given activity is running
---@param key string
---@return boolean
function EntityItem.IsActivityRunning(key) end

-- Returns the remaining time on an activity in milliesconds
---@param key string
---@return number
function EntityItem.RemainingActivityTime(key) end

-- Starts an activity for a given duration
---@param key string
---@param milliseconds number
function EntityItem.SetActivityRunning(key, milliseconds) end

-- In order to maintain legacy mod API compatibility of FromBytes(BinaryReader reader, bool isSync), we create an overload which server-side calling code will actually call, and store the remaps parameter in a field
---@param reader BinaryReader
---@param isSync boolean
---@param serversideRemaps table
function EntityItem.FromBytes(reader, isSync, serversideRemaps) end

-- Serializes the slots contents to be stored in the SaveGame
---@param writer BinaryWriter
---@param forClient boolean
function EntityItem.ToBytes(writer, forClient) end

-- Revives the entity and heals for 9999.
function EntityItem.Revive() end

-- Assumes that it is only called on the server
---@param type string
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
function EntityItem.PlayEntitySound(type, dualCallByPlayer, randomizePitch, range) end

-- This method pings the Notify() method of all behaviors and ai tasks. Can be used to spread information to other creatures.
---@param key string
---@param data userdata
function EntityItem.Notify(key, data) end

-- This method is called by the BlockSchematic class a moment before a schematic containing this entity is getting exported.
-- Since a schematic can be placed anywhere in the world, this method has to make sure the entities position is set to a value
-- relative of the schematic origin point defined by startPos
-- Right after calling this method, the world edit system will call .ToBytes() to serialize the entity
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function EntityItem.WillExport(startPos) end

-- This method is called by the BlockSchematic class a moment after a schematic containing this entity has been exported. 
-- Since a schematic can be placed anywhere in the world, this method has to make sure the entities position is set to the correct 
-- position in relation to the target position of the schematic to be imported.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function EntityItem.DidImportOrExport(startPos) end

-- Called by the worldedit schematic exporter so that it can also export the mappings of items/blocks stored inside blockentities
---@param blockIdMapping table
---@param itemIdMapping table
function EntityItem.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

-- Called by the blockschematic loader so that you may fix any blockid/itemid mappings against the mapping of the savegame, if you store any collectibles in this blockentity.
-- Note: Some vanilla blocks resolve randomized contents in this method.
-- Hint: Use itemstack.FixMapping() to do the job for you.
---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
function EntityItem.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed) end

-- Called by the blockschematic loader so that you may fix any blockid/itemid mappings against the mapping of the savegame, if you store any collectibles in this blockentity.
-- Note: Some vanilla blocks resolve randomized contents in this method.
-- Hint: Use itemstack.FixMapping() to do the job for you.
---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
---@param resolveImports boolean
function EntityItem.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed, resolveImports) end

-- Gets the name for this entity
---@return string
function EntityItem.GetName() end

-- gets the info text for the entity.
---@return string
function EntityItem.GetInfoText() end

-- Returns a new assetlocation with an equal domain and the given path
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityItem.CodeWithPath(path) end

-- Removes componentsToRemove parts from the blocks code end by splitting it up at every occurence of a dash ('-'). Right to left.
---@param componentsToRemove number
---@return string
function EntityItem.CodeWithoutParts(componentsToRemove) end

-- Removes componentsToRemove parts from the blocks code beginning by splitting it up at every occurence of a dash ('-'). Left to Right
---@param componentsToRemove number
---@return string
function EntityItem.CodeEndWithoutParts(componentsToRemove) end

-- Replaces the last parts from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param components string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityItem.CodeWithParts(components) end

-- More efficient version of CodeWithParts if there is only a single parameter
---@param component string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityItem.CodeWithParts(component) end

---@param type string
---@param value string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityItem.CodeWithVariant(type, value) end

---@param valuesByType table
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityItem.CodeWithVariants(valuesByType) end

---@param types string
---@param values string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityItem.CodeWithVariants(types, values) end

-- Replaces one part from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param part string
---@param atPosition? number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityItem.CodeWithPart(part, atPosition) end

-- Returns the n-th code part in inverse order. If the code contains no dash ('-') the whole code is returned. Returns null if posFromRight is too high.
---@param posFromRight? number
---@return string
function EntityItem.LastCodePart(posFromRight) end

-- Returns the n-th code part. If the code contains no dash ('-') the whole code is returned. Returns null if posFromLeft is too high.
---@param posFromLeft? number
---@return string
function EntityItem.FirstCodePart(posFromLeft) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards AssetLocation[] Defines a complete path to an assets, including it's domain
---@return boolean
function EntityItem.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function EntityItem.WildCardMatch(wildCard) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards string
---@return boolean
function EntityItem.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard string
---@return boolean
function EntityItem.WildCardMatch(wildCard) end

---@return userdata
function EntityItem.GetType() end

---@return string
function EntityItem.ToString() end

---@param obj userdata
---@return boolean
function EntityItem.Equals(obj) end

---@return number
function EntityItem.GetHashCode() end


