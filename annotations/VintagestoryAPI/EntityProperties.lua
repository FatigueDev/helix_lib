---@meta

---@class EntityProperties
---@field SpawnCollisionBox Cuboidf The collision box they have.
---@field Id number Assigned on registering the entity type
---@field Color string
---@field Code AssetLocation The entity code in the code.
---@field Variant OrderedDictionary`2 Variant values as resolved from blocktype/itemtype or entitytype
---@field Class string The classification of the entity.
---@field Habitat EnumHabitat Natural habitat of the entity. Decides whether to apply gravity or not
---@field CollisionBoxSize Vec2f The size of the entity's hitbox (default: 0.2f/0.2f)
---@field DeadCollisionBoxSize Vec2f The size of the hitbox while the entity is dead.
---@field SelectionBoxSize Vec2f The size of the entity's hitbox (default: null, i.e. same as collision box)
---@field DeadSelectionBoxSize Vec2f The size of the hitbox while the entity is dead.  (default: null, i.e. same as dead collision box)
---@field EyeHeight number How high the camera should be placed if this entity were to be controlled by the player
---@field SwimmingEyeHeight number
---@field Weight number The mass of this type of entity in kilograms, on average - defaults to 25kg (medium-low) if not set by the asset
---@field CanClimb boolean If true the entity can climb on walls
---@field CanClimbAnywhere boolean If true the entity can climb anywhere.
---@field FallDamage boolean Whether the entity should take fall damage
---@field FallDamageMultiplier number If less than one, mitigates fall damage (e.g. could be used for mountainous creatures); if more than one, increases fall damage (e.g fragile creatures?)
---@field ClimbTouchDistance number
---@field RotateModelOnClimb boolean Should the model in question rotate if climbing?
---@field KnockbackResistance number The resistance to being pushed back by an impact.
---@field Attributes JsonObject The attributes of the entity.  These are the Attributes read from the entity type's JSON file. If your code modifies these Attributes (not recommended!), the changes will apply to all entities of the same type.
---@field Client EntityClientProperties The client properties of the entity.
---@field Server EntityServerProperties The server properties of the entity.
---@field Sounds table The sounds that this entity can make.
---@field ResolvedSounds table The sounds this entity can make after being resolved.
---@field IdleSoundChance number The chance that an idle sound will play for the entity.
---@field IdleSoundRange number The sound range for the idle sound in blocks.
---@field Drops BlockDropItemStack[] The drops for the entity when they are killed.
---@field DropsPacket number
EntityProperties = {}

---@return EntityProperties
function EntityProperties.ctor() end

---@return Cuboidf # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function EntityProperties.get_SpawnCollisionBox() end

-- Creates a copy of this object.
---@return EntityProperties
function EntityProperties.Clone() end

-- Initalizes the properties for the entity.
---@param entity Entity The basic class for all entities in the game
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function EntityProperties.Initialize(entity, api) end

-- Initializes the sounds for this entity type.
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
function EntityProperties.InitSounds(assetManager) end

---@return userdata
function EntityProperties.GetType() end

---@return string
function EntityProperties.ToString() end

---@param obj userdata
---@return boolean
function EntityProperties.Equals(obj) end

---@return number
function EntityProperties.GetHashCode() end


