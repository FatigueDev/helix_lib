---@meta

-- The world accessor implemented by the server
---@class IServerWorldAccessor:  IWorldAccessor
---@field LoadedEntities ConcurrentDictionary`2 The internal cache of all currently loaded entities. Warning: You should not set or remove anything from this dic unless you *really* know what you're doing. Use SpawnEntity/DespawnEntity instead. Intended to be used, for example, to search for an entity's presence, or to iterate through all loaded entities. Please leave it to the game engine to add and remove entities from this dictionary.  From 1.18.2 onwards, if you really need to add or remove anything directly to/from this dictionary in your own code - which is *strongly* not recommended - then you should cast this to (CachingConcurrentDictionary) first.
---@field TreeGenerators OrderedDictionary`2 List of all loaded tree generators
---@field RemappedEntities table Dictionary of entity codes to remap, old codes (which may be present in save files or schematics) as keys
IServerWorldAccessor = {}


---@return ConcurrentDictionary`2
function IServerWorldAccessor.get_LoadedEntities() end

-- Removes an entity from the game and the chunk it resides in
---@param entity Entity The basic class for all entities in the game
---@param reason EntityDespawnData
function IServerWorldAccessor.DespawnEntity(entity, reason) end

-- Creates an explosion at given position. 
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blastType EnumBlastType
---@param destructionRadius number
---@param injureRadius number
---@param blockDropChanceMultiplier? number
function IServerWorldAccessor.CreateExplosion(pos, blastType, destructionRadius, injureRadius, blockDropChanceMultiplier) end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function IServerWorldAccessor.get_TreeGenerators() end

---@return table
function IServerWorldAccessor.get_RemappedEntities() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function IServerWorldAccessor.IsFullyLoadedChunk(pos) end

-- Used for server-side entity physics ticking
---@param entitybehavior IServerPhysicsTicker
function IServerWorldAccessor.AddPhysicsTick(entitybehavior) end


