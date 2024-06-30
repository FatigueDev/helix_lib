---@meta

---@class EntityPlayer: EntityHumanoid, EntityAgent, EntityHumanoid, RegistryObject, Entity
---@field BodyYaw number
---@field LastReviveTotalHours number
---@field StoreWithChunk boolean
---@field PlayerUID string The player's internal Universal ID. Available on the client and the server.
---@field RightHandItemSlot ItemSlot The players right hand contents. Available on the client and the server.
---@field LeftHandItemSlot ItemSlot The playres left hand contents. Available on the client and the server.
---@field GearInventory IInventory The players wearables. Available on the client and the server.
---@field LightHsv number
---@field AlwaysActive boolean
---@field ShouldDespawn boolean
---@field IsInteractable boolean
---@field LadderFixDelta number
---@field Player IPlayer The base player attached to this EntityPlayer.
---@field AnimManager IAnimationManager
---@field OtherAnimManager IAnimationManager
---@field TpAnimManager IAnimationManager
---@field IsCreature boolean
---@field BodyYawServer number The yaw of the agents body on the client, retrieved from the server (BehaviorInterpolatePosition lerps this value and sets BodyYaw)
---@field HerdId number Unique identifier for a herd
---@field MountedOn IMountable
---@field ActiveHandItemSlot ItemSlot
---@field Controls EntityControls The controls for this entity.
---@field ServerControls EntityControls The server controls for this entity
---@field IsOnFire boolean
---@field Properties EntityProperties
---@field SidedProperties EntitySidedProperties
---@field SwimmingOffsetY number Used for passive physics simulation, together with the MaterialDensity to check how deep in the water the entity should float
---@field Collided boolean CollidedVertically || CollidedHorizontally
---@field SidedPos EntityPos ServerPos on server, Pos on client
---@field LocalEyePos Vec3d The height of the eyes for the given entity.
---@field ApplyGravity boolean If gravity should applied to this entity
---@field MaterialDensity number Determines on whether an entity floats on liquids or not and how strongly items get pushed by water. Water has a density of 1000. A density below 1000 means the entity floats on top of water if has a physics simulation behavior attached to it.
---@field Alive boolean True if the entity is in state active or inactive, or generally not dead (for non-living entities, 'dead' means ready to despawn)
---@field IdleSoundChanceModifier number
---@field RenderColor number Used by some renderers to apply an overal color tint on the entity
---@field OnFootStep function Set this to hook into the foot step sound creator thingy. Currently used by the armor system to create armor step sounds. Called by the game client and server.
---@field OnImpact function Called when the player falls onto the ground. Called by the game client and server.
---@field OnInitialized function
---@field PreviousBlockSelection BlockPos The block position previously selected by the player
---@field BlockSelection BlockSelection The block or blocks currently selected by the player
---@field EntitySelection EntitySelection The entity or entities selected by the player
---@field DeathReason DamageSource The reason the player died (if the player did die). Set only by the game server.
---@field CameraPos Vec3d The camera position of the player's view. Set only by the game client.
---@field WalkYaw number The yaw the player currently wants to walk towards to. Value set by the PlayerPhysics system. Set by the game client and server.
---@field WalkPitch number The pitch the player currently wants to move to. Only relevant while swimming. Value set by the PlayerPhysics system. Set by the game client and server.
---@field OnCanSpawnNearby CanSpawnNearbyDelegate Called whenever the game wants to spawn new creatures around the player. Called only by the game server.
---@field talkUtil EntityTalkUtil
---@field BodyYawLimits Vec2f
---@field HeadYawLimits Vec2f
---@field entityListForPartitioning table Used to assist if this EntityPlayer needs to be repartitioned
---@field walkSpeed number This is not walkspeed per se, it is the walkspeed modifier as a result of armor and other gear.  It corresponds to Stats.GetBlended("walkspeed") and gets updated every tick
---@field selfNowShadowPass boolean
---@field PrevFrameCanStandUp boolean
---@field selfClimateCond ClimateCondition
---@field sidewaysSwivelAngle number
---@field DeadNotify boolean True if all clients have to be informed about this entities death. Set to false once all clients have been notified
---@field CurrentControls EnumEntityActivity
---@field AllowDespawn boolean Whether or not the entity is allowed to despawn (Default: true)
---@field hideClothing boolean
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
EntityPlayer = {}

---@return EntityPlayer
function EntityPlayer.ctor() end

---@param value function
function EntityPlayer.add_OnFootStep(value) end

---@param value function
function EntityPlayer.remove_OnFootStep(value) end

---@param value function
function EntityPlayer.add_OnImpact(value) end

---@param value function
function EntityPlayer.remove_OnImpact(value) end

---@return number
function EntityPlayer.get_BodyYaw() end

---@param value number
function EntityPlayer.set_BodyYaw(value) end

---@return number
function EntityPlayer.get_LastReviveTotalHours() end

---@param value number
function EntityPlayer.set_LastReviveTotalHours(value) end

function EntityPlayer.UpdatePartitioning() end

---@return boolean
function EntityPlayer.get_StoreWithChunk() end

---@return string
function EntityPlayer.get_PlayerUID() end

---@return ItemSlot # The default item slot to item stacks
function EntityPlayer.get_RightHandItemSlot() end

---@return ItemSlot # The default item slot to item stacks
function EntityPlayer.get_LeftHandItemSlot() end

---@return IInventory # Basic interface representing an item inventory
function EntityPlayer.get_GearInventory() end

---@return number
function EntityPlayer.get_LightHsv() end

---@return boolean
function EntityPlayer.get_AlwaysActive() end

---@return boolean
function EntityPlayer.get_ShouldDespawn() end

---@return boolean
function EntityPlayer.get_IsInteractable() end

---@return number
function EntityPlayer.get_LadderFixDelta() end

---@return IPlayer # Represents a player
function EntityPlayer.get_Player() end

---@return IAnimationManager # Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function EntityPlayer.get_AnimManager() end

---@param value IAnimationManager Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function EntityPlayer.set_AnimManager(value) end

---@return IAnimationManager # Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function EntityPlayer.get_OtherAnimManager() end

---@return IAnimationManager # Everything needed for allowing animations the Entity class holds a reference to an IAnimator.  Currently implemented by ServerAnimator
function EntityPlayer.get_TpAnimManager() end

---@param properties EntityProperties
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param chunkindex3d number
function EntityPlayer.Initialize(properties, api, chunkindex3d) end

---@param groundDragFactor? number
---@return number
function EntityPlayer.GetWalkSpeedMultiplier(groundDragFactor) end

---@param dt number
function EntityPlayer.OnSelfBeforeRender(dt) end

---@param entityShape Shape&
---@param shapePathForLogging string
function EntityPlayer.OnTesselation(entityShape, shapePathForLogging) end

---@param tmpPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function EntityPlayer.GetInsideTorsoBlockSoundSource(tmpPos) end

---@param tmpPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function EntityPlayer.GetInsideLegsBlockSoundSource(tmpPos) end

---@param player IPlayer Represents a player
---@return boolean
function EntityPlayer.PlayInsideSound(player) end

---@param player IPlayer Represents a player
---@param playingInsideSound boolean
function EntityPlayer.PlayStepSound(player, playingInsideSound) end

---@param dt number
function EntityPlayer.OnGameTick(dt) end

---@param dt number
---@param manager IAsyncParticleManager
function EntityPlayer.OnAsyncParticleTick(dt, manager) end

---@param dt number
function EntityPlayer.HandleSeraphHandAnimations(dt) end

---@param type EntityProperties
---@param spawnPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param sc RuntimeSpawnConditions
---@return boolean
function EntityPlayer.CanSpawnNearby(type, spawnPosition, sc) end

---@param motionY number
function EntityPlayer.OnFallToGround(motionY) end

-- Returns null if there is no nearby sound source
---@param tmpPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param yOffset number
---@param blockLayer number
---@param usecollisionboxes boolean
---@return Block # Basic class for a placeable block
function EntityPlayer.GetNearestBlockSoundSource(tmpPos, yOffset, blockLayer, usecollisionboxes) end

---@param itemstack ItemStack
---@return boolean
function EntityPlayer.TryGiveItemStack(itemstack) end

---@param reason? EnumDespawnReason
---@param damageSourceForDeath? DamageSource
function EntityPlayer.Die(reason, damageSourceForDeath) end

---@param onmount IMountable
---@return boolean
function EntityPlayer.TryMount(onmount) end

function EntityPlayer.Revive() end

---@param type string
---@param dualCallByPlayer? IPlayer Represents a player
---@param randomizePitch? boolean
---@param range? number
function EntityPlayer.PlayEntitySound(type, dualCallByPlayer, randomizePitch, range) end

---@param packetid number
---@param data number
function EntityPlayer.OnReceivedServerPacket(packetid, data) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packetid number
---@param data number
function EntityPlayer.OnReceivedClientPacket(player, packetid, data) end

---@param damageSource DamageSource
---@param damage number
---@return boolean
function EntityPlayer.ShouldReceiveDamage(damageSource, damage) end

function EntityPlayer.Ignite() end

---@param damageSource DamageSource
---@param damage number
function EntityPlayer.OnHurt(damageSource, damage) end

---@param forceStop boolean
---@param cancelReason? EnumItemUseCancelReason
---@return boolean
function EntityPlayer.TryStopHandAction(forceStop, cancelReason) end

---@param handler OnInventorySlot Return false to stop walking the inventory
function EntityPlayer.WalkInventory(handler) end

-- Sets the current player.
function EntityPlayer.SetCurrentlyControlledPlayer() end

function EntityPlayer.OnCollideWithLiquid() end

---@param x number
---@param y number
---@param z number
---@param onTeleported? function
function EntityPlayer.TeleportToDouble(x, y, z, onTeleported) end

---@return string
function EntityPlayer.GetName() end

---@return string
function EntityPlayer.GetInfoText() end

---@param reader BinaryReader
---@param forClient boolean
function EntityPlayer.FromBytes(reader, forClient) end

function EntityPlayer.UpdateDebugAttributes() end

---@return boolean
function EntityPlayer.get_IsCreature() end

---@return number
function EntityPlayer.get_BodyYawServer() end

---@param value number
function EntityPlayer.set_BodyYawServer(value) end

---@return number
function EntityPlayer.get_HerdId() end

---@param value number
function EntityPlayer.set_HerdId(value) end

---@return IMountable
function EntityPlayer.get_MountedOn() end

---@param value ItemSlot The default item slot to item stacks
function EntityPlayer.set_LeftHandItemSlot(value) end

---@param value ItemSlot The default item slot to item stacks
function EntityPlayer.set_RightHandItemSlot(value) end

---@return ItemSlot # The default item slot to item stacks
function EntityPlayer.get_ActiveHandItemSlot() end

---@param value IInventory Basic interface representing an item inventory
function EntityPlayer.set_GearInventory(value) end

---@return EntityControls # The available controls to move around a character in a game world
function EntityPlayer.get_Controls() end

---@return EntityControls # The available controls to move around a character in a game world
function EntityPlayer.get_ServerControls() end

-- Are the eyes of this entity submerged in liquid?
---@return boolean
function EntityPlayer.IsEyesSubmerged() end

-- Attempts to un-mount the player.
---@return boolean
function EntityPlayer.TryUnmount() end

-- Called when the path finder does not find a path to given target
---@param target Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityPlayer.OnNoPath(target) end

---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param slot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode EnumInteractMode
function EntityPlayer.OnInteract(byEntity, slot, hitPosition, mode) end

---@param source DamageSource
---@param targetEntity EntityAgent A goal-directed entity which observes and acts upon an environment
function EntityPlayer.DidAttack(source, targetEntity) end

---@param damageSource DamageSource
---@param damage number
---@return boolean
function EntityPlayer.ReceiveDamage(damageSource, damage) end

-- Recieves the saturation from a food source.
---@param saturation number
---@param foodCat? EnumFoodCategory
---@param saturationLossDelay? number
---@param nutritionGainMultiplier? number
function EntityPlayer.ReceiveSaturation(saturation, foodCat, saturationLossDelay, nutritionGainMultiplier) end

-- Whether or not the target should recieve saturation.
---@param saturation number
---@param foodCat? EnumFoodCategory
---@param saturationLossDelay? number
---@param nutritionGainMultiplier? number
---@return boolean
function EntityPlayer.ShouldReceiveSaturation(saturation, foodCat, saturationLossDelay, nutritionGainMultiplier) end

-- Serializes the slots contents to be stored in the SaveGame
---@param writer BinaryWriter
---@param forClient boolean
function EntityPlayer.ToBytes(writer, forClient) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
---@param resolveImports boolean
function EntityPlayer.OnLoadCollectibleMappings(worldForResolve, oldBlockIdMapping, oldItemIdMapping, schematicSeed, resolveImports) end

---@param blockIdMapping table
---@param itemIdMapping table
function EntityPlayer.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

---@param value function
function EntityPlayer.add_OnInitialized(value) end

---@param value function
function EntityPlayer.remove_OnInitialized(value) end

---@return boolean
function EntityPlayer.get_IsOnFire() end

---@param value boolean
function EntityPlayer.set_IsOnFire(value) end

---@return EntityProperties
function EntityPlayer.get_Properties() end

---@return EntitySidedProperties
function EntityPlayer.get_SidedProperties() end

---@return number
function EntityPlayer.get_SwimmingOffsetY() end

---@return boolean
function EntityPlayer.get_Collided() end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPlayer.get_SidedPos() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityPlayer.get_LocalEyePos() end

---@param value Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityPlayer.set_LocalEyePos(value) end

---@return boolean
function EntityPlayer.get_ApplyGravity() end

---@return number
function EntityPlayer.get_MaterialDensity() end

---@param value number
function EntityPlayer.set_LightHsv(value) end

---@return boolean
function EntityPlayer.get_Alive() end

---@param value boolean
function EntityPlayer.set_Alive(value) end

---@return number
function EntityPlayer.get_IdleSoundChanceModifier() end

---@param value number
function EntityPlayer.set_IdleSoundChanceModifier(value) end

---@return number
function EntityPlayer.get_RenderColor() end

---@param onFirstSpawn boolean
function EntityPlayer.AfterInitialized(onFirstSpawn) end

-- Is called before the entity is killed, should return what items this entity should drop. Return null or empty array for no drops.
---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@return ItemStack[]
function EntityPlayer.GetDrops(world, pos, byPlayer) end

-- Teleports the entity to given position
---@param x number
---@param y number
---@param z number
function EntityPlayer.TeleportTo(x, y, z) end

-- Teleports the entity to given position
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityPlayer.TeleportTo(position) end

-- Teleports the entity to given position
---@param position BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function EntityPlayer.TeleportTo(position) end

-- Teleports the entity to given position
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param onTeleported? function
function EntityPlayer.TeleportTo(position, onTeleported) end

-- Called when the entity collided with something solid and Collided was false before
function EntityPlayer.OnCollided() end

-- Called when after the got loaded from the savegame (not called during spawn)
function EntityPlayer.OnEntityLoaded() end

-- Called when the entity spawns (not called when loaded from the savegame).
function EntityPlayer.OnEntitySpawn() end

-- Called when the entity despawns
---@param despawn EntityDespawnData
function EntityPlayer.OnEntityDespawn(despawn) end

-- Called when the entity has left a liquid
function EntityPlayer.OnExitedLiquid() end

-- Called when a player looks at the entity with interaction help enabled
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param es EntitySelection
---@param player IClientPlayer A client side player
---@return WorldInteraction[]
function EntityPlayer.GetInteractionHelp(world, es, player) end

-- Called by client when a new server pos arrived
---@param isTeleport boolean
function EntityPlayer.OnReceivedServerPos(isTeleport) end

---@param activeAnimations number
---@param activeAnimationsCount number
---@param activeAnimationSpeeds number
function EntityPlayer.OnReceivedServerAnimations(activeAnimations, activeAnimationsCount, activeAnimationSpeeds) end

-- Called by BehaviorCollectEntities of nearby entities. Should return the itemstack that should be collected. If the item stack was fully picked up, BehaviorCollectEntities will kill this entity
---@param byEntity Entity The basic class for all entities in the game
---@return ItemStack
function EntityPlayer.OnCollected(byEntity) end

-- Called on the server when the entity was changed from active to inactive state or vice versa
---@param beforeState EnumEntityState
function EntityPlayer.OnStateChanged(beforeState) end

-- Helper method to set the CollisionBox
---@param length number
---@param height number
function EntityPlayer.SetCollisionBox(length, height) end

---@param length number
---@param height number
function EntityPlayer.SetSelectionBox(length, height) end

-- Adds given behavior to the entities list of active behaviors
---@param behavior EntityBehavior Defines a basic entity behavior that can be attached to entities
function EntityPlayer.AddBehavior(behavior) end

-- Removes given behavior to the entities list of active behaviors. Does nothing if the behavior has already been removed
---@param behavior EntityBehavior Defines a basic entity behavior that can be attached to entities
function EntityPlayer.RemoveBehavior(behavior) end

-- Returns true if the entity has given active behavior
---@param behaviorName string
---@return boolean
function EntityPlayer.HasBehavior(behaviorName) end

---@return boolean
function EntityPlayer.HasBehavior() end

-- Returns the behavior instance for given entity. Returns null if it doesn't exist.
---@param name string
---@return EntityBehavior # Defines a basic entity behavior that can be attached to entities
function EntityPlayer.GetBehavior(name) end

---@return T
function EntityPlayer.GetBehavior() end

-- Returns true if given activity is running
---@param key string
---@return boolean
function EntityPlayer.IsActivityRunning(key) end

-- Returns the remaining time on an activity in milliesconds
---@param key string
---@return number
function EntityPlayer.RemainingActivityTime(key) end

-- Starts an activity for a given duration
---@param key string
---@param milliseconds number
function EntityPlayer.SetActivityRunning(key, milliseconds) end

-- In order to maintain legacy mod API compatibility of FromBytes(BinaryReader reader, bool isSync), we create an overload which server-side calling code will actually call, and store the remaps parameter in a field
---@param reader BinaryReader
---@param isSync boolean
---@param serversideRemaps table
function EntityPlayer.FromBytes(reader, isSync, serversideRemaps) end

-- Should return true if this item can be picked up as an itemstack
---@param byEntity Entity The basic class for all entities in the game
---@return boolean
function EntityPlayer.CanCollect(byEntity) end

-- This method pings the Notify() method of all behaviors and ai tasks. Can be used to spread information to other creatures.
---@param key string
---@param data userdata
function EntityPlayer.Notify(key, data) end

-- This method is called by the BlockSchematic class a moment before a schematic containing this entity is getting exported.
-- Since a schematic can be placed anywhere in the world, this method has to make sure the entities position is set to a value
-- relative of the schematic origin point defined by startPos
-- Right after calling this method, the world edit system will call .ToBytes() to serialize the entity
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function EntityPlayer.WillExport(startPos) end

-- This method is called by the BlockSchematic class a moment after a schematic containing this entity has been exported. 
-- Since a schematic can be placed anywhere in the world, this method has to make sure the entities position is set to the correct 
-- position in relation to the target position of the schematic to be imported.
---@param startPos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function EntityPlayer.DidImportOrExport(startPos) end

-- Called by the blockschematic loader so that you may fix any blockid/itemid mappings against the mapping of the savegame, if you store any collectibles in this blockentity.
-- Note: Some vanilla blocks resolve randomized contents in this method.
-- Hint: Use itemstack.FixMapping() to do the job for you.
---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param schematicSeed number
function EntityPlayer.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, schematicSeed) end

-- Starts the animation for the entity.
---@param code string
function EntityPlayer.StartAnimation(code) end

-- stops the animation for the entity.
---@param code string
function EntityPlayer.StopAnimation(code) end

-- Returns a new assetlocation with an equal domain and the given path
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityPlayer.CodeWithPath(path) end

-- Removes componentsToRemove parts from the blocks code end by splitting it up at every occurence of a dash ('-'). Right to left.
---@param componentsToRemove number
---@return string
function EntityPlayer.CodeWithoutParts(componentsToRemove) end

-- Removes componentsToRemove parts from the blocks code beginning by splitting it up at every occurence of a dash ('-'). Left to Right
---@param componentsToRemove number
---@return string
function EntityPlayer.CodeEndWithoutParts(componentsToRemove) end

-- Replaces the last parts from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param components string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityPlayer.CodeWithParts(components) end

-- More efficient version of CodeWithParts if there is only a single parameter
---@param component string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityPlayer.CodeWithParts(component) end

---@param type string
---@param value string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityPlayer.CodeWithVariant(type, value) end

---@param valuesByType table
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityPlayer.CodeWithVariants(valuesByType) end

---@param types string
---@param values string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityPlayer.CodeWithVariants(types, values) end

-- Replaces one part from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param part string
---@param atPosition? number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function EntityPlayer.CodeWithPart(part, atPosition) end

-- Returns the n-th code part in inverse order. If the code contains no dash ('-') the whole code is returned. Returns null if posFromRight is too high.
---@param posFromRight? number
---@return string
function EntityPlayer.LastCodePart(posFromRight) end

-- Returns the n-th code part. If the code contains no dash ('-') the whole code is returned. Returns null if posFromLeft is too high.
---@param posFromLeft? number
---@return string
function EntityPlayer.FirstCodePart(posFromLeft) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards AssetLocation[] Defines a complete path to an assets, including it's domain
---@return boolean
function EntityPlayer.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function EntityPlayer.WildCardMatch(wildCard) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards string
---@return boolean
function EntityPlayer.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard string
---@return boolean
function EntityPlayer.WildCardMatch(wildCard) end

---@return userdata
function EntityPlayer.GetType() end

---@return string
function EntityPlayer.ToString() end

---@param obj userdata
---@return boolean
function EntityPlayer.Equals(obj) end

---@return number
function EntityPlayer.GetHashCode() end


