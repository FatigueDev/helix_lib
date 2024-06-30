---@meta

---@class APIBase:  ICoreAPICommon
---@field ObjectCache table
---@field ClassRegistryNative ClassRegistry
---@field DataBasePath string
APIBase = {}

---@param gamemain GameMain
---@return APIBase
function APIBase.ctor(gamemain) end

---@return table
function APIBase.get_ObjectCache() end

---@return ClassRegistry
function APIBase.get_ClassRegistryNative() end

---@param recipeRegistryCode string
---@return T
function APIBase.RegisterRecipeRegistry(recipeRegistryCode) end

---@param classsName string
---@param entity userdata
function APIBase.RegisterEntity(classsName, entity) end

---@param className string
---@param entityBehavior userdata
function APIBase.RegisterEntityBehaviorClass(className, entityBehavior) end

---@param blockClassName string
---@param type userdata
function APIBase.RegisterBlockClass(blockClassName, type) end

---@param className string
---@param type userdata
function APIBase.RegisterCropBehavior(className, type) end

---@param className string
---@param blockentity userdata
function APIBase.RegisterBlockEntityClass(className, blockentity) end

---@param className string
---@param itemType userdata
function APIBase.RegisterItemClass(className, itemType) end

---@param className string
---@param blockBehaviorType userdata
function APIBase.RegisterBlockBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockBehaviorType userdata
function APIBase.RegisterCollectibleBehaviorClass(className, blockBehaviorType) end

---@param className string
---@param blockEntityBehaviorType userdata
function APIBase.RegisterBlockEntityBehaviorClass(className, blockEntityBehaviorType) end

---@param className string
---@param mountableInstancer GetMountableDelegate This method needs to find your mountable based on the tree attribute data, which you can write to in IMountable.MountableToTreeAttributes() For example if its an entity, you will want to store the entity id, then this method can simply contain return world.GetEntityById(tree.GetLong("entityId"));
function APIBase.RegisterMountable(className, mountableInstancer) end

---@return string
function APIBase.get_DataBasePath() end

---@param foldername string
---@return string
function APIBase.GetOrCreateDataPath(foldername) end

---@param filename string
---@return T
function APIBase.LoadModConfig(filename) end

---@param jsonSerializeableData T
---@param filename string
function APIBase.StoreModConfig(jsonSerializeableData, filename) end

---@param map ColorMap
function APIBase.RegisterColorMap(map) end

---@param jobj JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
---@param filename string
function APIBase.StoreModConfig(jobj, filename) end

---@param filename string
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function APIBase.LoadModConfig(filename) end

---@return userdata
function APIBase.GetType() end

---@return string
function APIBase.ToString() end

---@param obj userdata
---@return boolean
function APIBase.Equals(obj) end

---@return number
function APIBase.GetHashCode() end


