---@meta

---@class UnloadableShape: Shape, Shape
---@field Loaded boolean
---@field TexturesResolved IDictionary`2
---@field Textures table The collection of textures in the shape.
---@field Elements ShapeElement[] The elements of the shape.
---@field Animations Animation[] The animations for the shape.
---@field AnimationsByCrc32 table
---@field TextureWidth number The width of the texture. (default: 16)
---@field TextureHeight number The height of the texture (default: 16) 
---@field TextureSizes table
---@field JointsById table
---@field AttachmentPointsByCode table
UnloadableShape = {}

---@return UnloadableShape
function UnloadableShape.ctor() end

function UnloadableShape.Unload() end

---@param game ClientMain
---@param srcandLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return boolean
function UnloadableShape.Load(game, srcandLoc) end

---@param shapeTexturesCache table
function UnloadableShape.ResolveTextures(shapeTexturesCache) end

---@param context StreamingContext
function UnloadableShape.TrimTextureNamesAndResolveFaces(context) end

-- Attempts to resolve all references within the shape. Logs missing references them to the errorLogger
---@param errorLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param shapeNameForLogging string
function UnloadableShape.ResolveReferences(errorLogger, shapeNameForLogging) end

-- Prefixes texturePrefixCode to all textures in this shape. Required pre-step for stepparenting. The long arguments StepParentShape() calls this method.
---@param texturePrefixCode string
---@param damageEffect? number
---@return boolean
function UnloadableShape.SubclassForStepParenting(texturePrefixCode, damageEffect) end

-- Adds a step parented shape to this shape. If you plan to cache the childShape use the shorter argument method and call SubclassForStepParenting() only once on it
---@param childShape Shape The base shape for all json objects.
---@param texturePrefixCode string
---@param childLocationForLogging string
---@param parentLocationForLogging string
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param onTexture function
---@param damageEffect? number
---@return boolean
function UnloadableShape.StepParentShape(childShape, texturePrefixCode, childLocationForLogging, parentLocationForLogging, logger, onTexture, damageEffect) end

-- Adds a step parented shape to this shape, does not call the required pre-step SubclassForStepParenting()
---@param childShape Shape The base shape for all json objects.
---@param childLocationForLogging string
---@param parentLocationForLogging string
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param onTexture function
---@return boolean
function UnloadableShape.StepParentShape(childShape, childLocationForLogging, parentLocationForLogging, logger, onTexture) end

-- Collects all the elements in the shape recursively.
---@param elements ShapeElement[] A shape element built from JSON data within the model.
---@param elementsByName table
function UnloadableShape.CollectElements(elements, elementsByName) end

---@param requireJointsForElements string
function UnloadableShape.ResolveAndLoadJoints(requireJointsForElements) end

-- Resolves all joints and loads them.
---@param errorLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param shapeName string
---@param requireJointsForElements string
function UnloadableShape.ResolveAndFindJoints(errorLogger, shapeName, requireJointsForElements) end

---@param wildcardpath string
---@param onElement function
function UnloadableShape.WalkElements(wildcardpath, onElement) end

-- Recursively searches the element by name from the shape.
---@param name string
---@param stringComparison? string
---@return ShapeElement # A shape element built from JSON data within the model.
function UnloadableShape.GetElementByName(name, stringComparison) end

-- Removes *all* elements with given name
---@param name string
---@param stringComparison? string
---@return boolean
function UnloadableShape.RemoveElementByName(name, stringComparison) end

---@return ShapeElement[] # A shape element built from JSON data within the model.
function UnloadableShape.CloneElements() end

---@return Animation[] # Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
function UnloadableShape.CloneAnimations() end

-- Creates a deep copy of the shape
---@return Shape # The base shape for all json objects.
function UnloadableShape.Clone() end

---@return userdata
function UnloadableShape.GetType() end

---@return string
function UnloadableShape.ToString() end

---@param obj userdata
---@return boolean
function UnloadableShape.Equals(obj) end

---@return number
function UnloadableShape.GetHashCode() end


