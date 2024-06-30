---@meta

---@class CompositeShape
---@field RotateXYZCopy Vec3f
---@field OffsetXYZCopy Vec3f
---@field Base AssetLocation
---@field Format EnumShapeFormat
---@field InsertBakedTextures boolean Whether or not to insert baked in textures for mesh formats such as gltf into the texture atlas.
---@field rotateX number
---@field rotateY number
---@field rotateZ number
---@field offsetX number
---@field offsetY number
---@field offsetZ number
---@field Scale number
---@field Alternates CompositeShape[] The block shape may consists of any amount of alternatives, one of which will be randomly chosen when the block is placed in the world.
---@field BakedAlternates CompositeShape[] Includes the base shape
---@field Overlays CompositeShape[]
---@field VoxelizeTexture boolean If true, the shape is created from a voxelized version of the first defined texture
---@field QuantityElements Nullable`1 If non zero will only tesselate the first n elements of the shape
---@field SelectiveElements string If set will only tesselate elements with given name
CompositeShape = {}

---@return CompositeShape
function CompositeShape.ctor() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function CompositeShape.get_RotateXYZCopy() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function CompositeShape.get_OffsetXYZCopy() end

---@return number
function CompositeShape.GetHashCode() end

-- Creates a deep copy of the composite shape
---@return CompositeShape
function CompositeShape.Clone() end

-- Creates a deep copy of the shape, but omitting its alternates (used to populate the alternates)
---@return CompositeShape
function CompositeShape.CloneWithoutAlternates() end

-- Expands the Composite Shape and populates the Baked field
---@param assetManager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
function CompositeShape.LoadAlternates(assetManager, logger) end

---@return userdata
function CompositeShape.GetType() end

---@return string
function CompositeShape.ToString() end

---@param obj userdata
---@return boolean
function CompositeShape.Equals(obj) end


