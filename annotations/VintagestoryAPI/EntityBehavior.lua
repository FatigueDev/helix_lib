---@meta

-- Defines a basic entity behavior that can be attached to entities
---@class EntityBehavior
---@field ProfilerName string
---@field entity Entity
EntityBehavior = {}

---@param entity Entity The basic class for all entities in the game
---@return EntityBehavior
function EntityBehavior.ctor(entity) end

---@return string
function EntityBehavior.get_ProfilerName() end

-- Initializes the entity.
-- If your code modifies the supplied attributes (not recommended!), then your changes will apply to all entities of the same type.
---@param properties EntityProperties
---@param attributes JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function EntityBehavior.Initialize(properties, attributes) end

-- Called after initializing all the behaviors in case they need to cross-refer to each other or set some initial values only at spawn-time
---@param onFirstSpawn boolean
function EntityBehavior.AfterInitialized(onFirstSpawn) end

-- The event fired when a game ticks over.
---@param deltaTime number
function EntityBehavior.OnGameTick(deltaTime) end

-- The event fired when the entity is spawned (not called when loaded from the savegame).
function EntityBehavior.OnEntitySpawn() end

-- The event fired when the entity is loaded from disk (not called during spawn)
function EntityBehavior.OnEntityLoaded() end

-- The event fired when the entity is despawned.
---@param despawn EntityDespawnData
function EntityBehavior.OnEntityDespawn(despawn) end

-- The name of the property tied to this entity behavior.
---@return string
function EntityBehavior.PropertyName() end

---@param damageSource DamageSource
---@param damage number
function EntityBehavior.OnEntityReceiveDamage(damageSource, damage) end

-- When the entity got revived (only for players and traders currently)
function EntityBehavior.OnEntityRevive() end

-- The event fired when the entity falls to the ground.
---@param lastTerrainContact Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param withYMotion number
function EntityBehavior.OnFallToGround(lastTerrainContact, withYMotion) end

-- The event fired when the entity recieves saturation.
---@param saturation number
---@param foodCat? EnumFoodCategory
---@param saturationLossDelay? number
---@param nutritionGainMultiplier? number
function EntityBehavior.OnEntityReceiveSaturation(saturation, foodCat, saturationLossDelay, nutritionGainMultiplier) end

---@param isTeleport boolean
---@param handled EnumHandling&
function EntityBehavior.OnReceivedServerPos(isTeleport, handled) end

---@param world IWorldAccessor Important interface to access the game world.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param byPlayer IPlayer Represents a player
---@param handling EnumHandling&
---@return ItemStack[]
function EntityBehavior.GetDrops(world, pos, byPlayer, handling) end

---@param beforeState EnumEntityState
---@param handling EnumHandling&
function EntityBehavior.OnStateChanged(beforeState, handling) end

-- The notify method bubbled up from entity.Notify()
---@param key string
---@param data userdata
function EntityBehavior.Notify(key, data) end

-- Gets the information text when highlighting this entity.
---@param infotext string
function EntityBehavior.GetInfoText(infotext) end

-- The event fired when the entity dies.
---@param damageSourceForDeath DamageSource
function EntityBehavior.OnEntityDeath(damageSourceForDeath) end

---@param byEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param itemslot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode EnumInteractMode
---@param handled EnumHandling&
function EntityBehavior.OnInteract(byEntity, itemslot, hitPosition, mode, handled) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packetid number
---@param data number
---@param handled EnumHandling&
function EntityBehavior.OnReceivedClientPacket(player, packetid, data, handled) end

---@param packetid number
---@param data number
---@param handled EnumHandling&
function EntityBehavior.OnReceivedServerPacket(packetid, data, handled) end

-- Fired when the pathfinder does not find a path to given target
---@param target Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityBehavior.OnNoPath(target) end

---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param es EntitySelection
---@param player IClientPlayer A client side player
---@param handled EnumHandling&
---@return WorldInteraction[]
function EntityBehavior.GetInteractionHelp(world, es, player, handled) end

---@param source DamageSource
---@param targetEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param handled EnumHandling&
function EntityBehavior.DidAttack(source, targetEntity, handled) end

---@param blockIdMapping table
---@param itemIdMapping table
function EntityBehavior.OnStoreCollectibleMappings(blockIdMapping, itemIdMapping) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
function EntityBehavior.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping) end

---@param worldForNewMappings IWorldAccessor Important interface to access the game world.
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param resolveImports boolean
function EntityBehavior.OnLoadCollectibleMappings(worldForNewMappings, oldBlockIdMapping, oldItemIdMapping, resolveImports) end

---@param forClient boolean
function EntityBehavior.ToBytes(forClient) end

-- This method is not called on the server side
---@param isSync boolean
function EntityBehavior.FromBytes(isSync) end

-- Can be used by the /entity command or maybe other commands, to test behaviors
-- The argument will be an object provided by TextCommandCallingArgs, which can then be cast to the desired type e.g. int
---@param arg userdata
function EntityBehavior.TestCommand(arg) end

---@return userdata
function EntityBehavior.GetType() end

---@return string
function EntityBehavior.ToString() end

---@param obj userdata
---@return boolean
function EntityBehavior.Equals(obj) end

---@return number
function EntityBehavior.GetHashCode() end


