---@meta

---@class EntityBehaviorPassivePhysics: EntityBehavior, IDisposable, IRenderer, EntityBehavior
---@field RenderOrder number
---@field RenderRange number
---@field ProfilerName string
---@field clientPhysicsTickTimeThreshold number
---@field collisionYExtra number
---@field OnPhysicsTickCallback function If set, will test for entity collision every tick (expensive)
---@field UsePhysicsDormancyStateClient boolean True when theres 1000 currently loaded entities. This will cause dropped items to enter a physics dormancy state if the conditions are right. Set by ModSystemDormancyStateChecker in EntityItemRenderer.cs
---@field UsePhysicsDormancyStateServer boolean True when theres 1000 currently loaded entities. This will cause dropped items to enter a physics dormancy state if the conditions are right. Set by ModSystemDormancyStateChecker in EntityItemRenderer.cs
---@field entity Entity
EntityBehaviorPassivePhysics = {}

---@param entity Entity The basic class for all entities in the game
---@return EntityBehaviorPassivePhysics
function EntityBehaviorPassivePhysics.ctor(entity) end

---@return number
function EntityBehaviorPassivePhysics.get_RenderOrder() end

---@return number
function EntityBehaviorPassivePhysics.get_RenderRange() end

---@param despawn EntityDespawnData
function EntityBehaviorPassivePhysics.OnEntityDespawn(despawn) end

---@param properties EntityProperties
---@param attributes JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function EntityBehaviorPassivePhysics.Initialize(properties, attributes) end

---@param deltaTime number
---@param stage EnumRenderStage
function EntityBehaviorPassivePhysics.OnRenderFrame(deltaTime, stage) end

---@param deltaTime number
function EntityBehaviorPassivePhysics.OnGameTick(deltaTime) end

---@param deltaTime number
---@param usePhysicsDormancyState boolean
function EntityBehaviorPassivePhysics.onPhysicsTick(deltaTime, usePhysicsDormancyState) end

-- Performs the physics on the specified entity.
---@param dt number
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
function EntityBehaviorPassivePhysics.DoPhysics(dt, pos) end

---@return string
function EntityBehaviorPassivePhysics.PropertyName() end

function EntityBehaviorPassivePhysics.Dispose() end

---@return string
function EntityBehaviorPassivePhysics.get_ProfilerName() end

-- Called after initializing all the behaviors in case they need to cross-refer to each other or set some initial values only at spawn-time
---@param onFirstSpawn boolean
function EntityBehaviorPassivePhysics.AfterInitialized(onFirstSpawn) end

-- The event fired when the entity is spawned (not called when loaded from the savegame).
function EntityBehaviorPassivePhysics.OnEntitySpawn() end

-- The event fired when the entity is loaded from disk (not called during spawn)
function EntityBehaviorPassivePhysics.OnEntityLoaded() end

---@param damageSource DamageSource
---@param damage number
function EntityBehaviorPassivePhysics.OnEntityReceiveDamage(damageSource, damage) end

-- When the entity got revived (only for players and traders currently)
function EntityBehaviorPassivePhysics.OnEntityRevive() end

-- The event fired when the entity falls to the ground.
---@param lastTerrainContact Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param withYMotion number
function EntityBehaviorPassivePhysics.OnFallToGround(lastTerrainContact, withYMotion) end

-- The event fired when the entity recieves saturation.
---@param saturation number
---@param foodCat? EnumFoodCategory
---@param saturationLossDelay? number
---@param nutritionGainMultiplier? number
function EntityBehaviorPassivePhysics.OnEntityReceiveSaturation(saturation, foodCat, saturationLossDelay, nutritionGainMultiplier) end

---@param isTeleport boolean
---@param handled EnumHandling&
function EntityBehaviorPassivePhysics.OnReceivedServerPos(isTeleport, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param handling EnumHandling&
---@return ItemStack[]
function EntityBehaviorPassivePhysics.GetDrops(world, pos, byPlayer, handling) end

---@param beforeState EnumEntityState
---@param handling EnumHandling&
function EntityBehaviorPassivePhysics.OnStateChanged(beforeState, handling) end

-- The notify method bubbled up from entity.Notify()
---@param key string
---@param data userdata
function EntityBehaviorPassivePhysics.Notify(key, data) end

-- Gets the information text when highlighting this entity.
---@param infotext string
function EntityBehaviorPassivePhysics.GetInfoText(infotext) end

-- The event fired when the entity dies.
---@param damageSourceForDeath DamageSource
function EntityBehaviorPassivePhysics.OnEntityDeath(damageSourceForDeath) end

---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param itemslot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode EnumInteractMode
---@param handled EnumHandling&
function EntityBehaviorPassivePhysics.OnInteract(byEntity, itemslot, hitPosition, mode, handled) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packetid number
---@param data number
---@param handled EnumHandling&
function EntityBehaviorPassivePhysics.OnReceivedClientPacket(player, packetid, data, handled) end

---@param packetid number
---@param data number
---@param handled EnumHandling&
function EntityBehaviorPassivePhysics.OnReceivedServerPacket(packetid, data, handled) end

-- Fired when the pathfinder does not find a path to given target
---@param target Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityBehaviorPassivePhysics.OnNoPath(target) end

---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param es EntitySelection
---@param player IClientPlayer A client side player
---@param handled EnumHandling&
---@return WorldInteraction[]
function EntityBehaviorPassivePhysics.GetInteractionHelp(world, es, player, handled) end

---@param source DamageSource
---@param targetEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param handled EnumHandling&
function EntityBehaviorPassivePhysics.DidAttack(source, targetEntity, handled) end

---@param blockIdMapping table
---@param itemIdMapping table
function EntityBehaviorPassivePhysics.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
function EntityBehaviorPassivePhysics.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param resolveImports boolean
function EntityBehaviorPassivePhysics.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, resolveImports) end

---@param forClient boolean
function EntityBehaviorPassivePhysics.ToBytes(forClient) end

-- This method is not called on the server side
---@param isSync boolean
function EntityBehaviorPassivePhysics.FromBytes(isSync) end

-- Can be used by the /entity command or maybe other commands, to test behaviors
-- The argument will be an object provided by TextCommandCallingArgs, which can then be cast to the desired type e.g. int
---@param arg userdata
function EntityBehaviorPassivePhysics.TestCommand(arg) end

---@return userdata
function EntityBehaviorPassivePhysics.GetType() end

---@return string
function EntityBehaviorPassivePhysics.ToString() end

---@param obj userdata
---@return boolean
function EntityBehaviorPassivePhysics.Equals(obj) end

---@return number
function EntityBehaviorPassivePhysics.GetHashCode() end


