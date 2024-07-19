---@meta

---@class IMountable
---@field CanControl boolean If this "mountable seat" is the one that controls the mountable entity/block
---@field MountedBy Entity
---@field MountSupplier IMountableSupplier Return null if you don't have a mountable supplier implementation
---@field MountPosition EntityPos
---@field AngleMode EnumMountAngleMode
---@field SuggestedAnimation string
---@field LocalEyePos Vec3f
---@field Controls EntityControls
IMountable = {}


---@return boolean
function IMountable.get_CanControl() end

---@return Entity # The basic class for all entities in the game
function IMountable.get_MountedBy() end

---@return IMountableSupplier
function IMountable.get_MountSupplier() end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function IMountable.get_MountPosition() end

---@return EnumMountAngleMode
function IMountable.get_AngleMode() end

---@return string
function IMountable.get_SuggestedAnimation() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IMountable.get_LocalEyePos() end

---@return EntityControls # The available controls to move around a character in a game world
function IMountable.get_Controls() end

-- When the entity unloads you should write whatever you need in here to reconstruct the IMountable after it's loaded again
-- Reconstruct it by registering a mountable instancer through api.RegisterMountable(string className, GetMountableDelegate mountableInstancer)
-- You must also set a string with key className, that is the same string that you used for RegisterMountable()
---@param tree TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
function IMountable.MountableToTreeAttributes(tree) end

-- Called when the entity unmounted himself
---@param entityAgent EntityAgent A goal-directed entity which observes and acts upon an environment
function IMountable.DidUnmount(entityAgent) end

-- Called when the entity mounted himself
---@param entityAgent EntityAgent A goal-directed entity which observes and acts upon an environment
function IMountable.DidMount(entityAgent) end


