---@meta

-- API Methods common to the server and client
---@class ICoreAPICommon
---@field ObjectCache table Can be used to store non-persistent, game wide data. E.g. used for firewood piles to pregenerate all meshes only once during startup
---@field DataBasePath string Returns the root path of the games data folder
ICoreAPICommon = {}


---@param recipeRegistryCode string
---@return T
function ICoreAPICommon.RegisterRecipeRegistry(recipeRegistryCode) end

-- Registers a new color map. Typically used to color in-game blocks with a texture - i.e. climate and seasonal coloring
---@param map ColorMap
function ICoreAPICommon.RegisterColorMap(map) end

-- Registers a non-block entity. Be sure to register it on the client and server side.
---@param className string
---@param entity userdata
function ICoreAPICommon.RegisterEntity(className, entity) end

-- Registers a non-block entity behavior. Be sure to register it on the client and server side.
---@param className string
---@param entityBehavior userdata
function ICoreAPICommon.RegisterEntityBehaviorClass(className, entityBehavior) end

-- Register a new Blockclass. Must happen before any blocks are loaded. Be sure to register it on the client and server side.
---@param className string
---@param blockType userdata
function ICoreAPICommon.RegisterBlockClass(className, blockType) end

-- Register a new crop behavior
---@param className string
---@param type userdata
function ICoreAPICommon.RegisterCropBehavior(className, type) end

-- Register a new BlockEntity Class. Must happen before any blocks are loaded. Be sure to register it on the client and server side.
---@param className string
---@param blockentityType userdata
function ICoreAPICommon.RegisterBlockEntityClass(className, blockentityType) end

-- Register a new Item Class. Must happen before any blocks are loaded. Be sure to register it on the client and server side.
---@param className string
---@param itemType userdata
function ICoreAPICommon.RegisterItemClass(className, itemType) end

-- Registers a new collectible behavior class, which can be used for items or for blocks. 
---@param className string
---@param blockBehaviorType userdata
function ICoreAPICommon.RegisterCollectibleBehaviorClass(className, blockBehaviorType) end

-- Register a new block behavior class. Must happen before any blocks are loaded. Be sure to register it on the client and server side.
---@param className string
---@param blockBehaviorType userdata
function ICoreAPICommon.RegisterBlockBehaviorClass(className, blockBehaviorType) end

-- Register a new block entity behavior class. Must happen before any blocks are loaded. Be sure to register it on the client and server side.
---@param className string
---@param blockEntityBehaviorType userdata
function ICoreAPICommon.RegisterBlockEntityBehaviorClass(className, blockEntityBehaviorType) end

-- Register a new block behavior class. Must happen before any blocks are loaded. Be sure to register it on the client and server side.
-- Make your your delegate also set tree.SetString("className", "[your className]");
---@param className string
---@param mountableInstancer GetMountableDelegate This method needs to find your mountable based on the tree attribute data, which you can write to in IMountable.MountableToTreeAttributes() For example if its an entity, you will want to store the entity id, then this method can simply contain return world.GetEntityById(tree.GetLong("entityId"));
function ICoreAPICommon.RegisterMountable(className, mountableInstancer) end

---@return table
function ICoreAPICommon.get_ObjectCache() end

---@return string
function ICoreAPICommon.get_DataBasePath() end

-- Returns the path to given foldername inside the games data folder. Ensures that the folder exists
---@param foldername string
---@return string
function ICoreAPICommon.GetOrCreateDataPath(foldername) end

---@param jsonSerializeableData T
---@param filename string
function ICoreAPICommon.StoreModConfig(jsonSerializeableData, filename) end

---@param jobj JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@param filename string
function ICoreAPICommon.StoreModConfig(jobj, filename) end

---@param filename string
---@return T
function ICoreAPICommon.LoadModConfig(filename) end

---@param filename string
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function ICoreAPICommon.LoadModConfig(filename) end


