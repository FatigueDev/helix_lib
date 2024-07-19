---@meta

-- The base shape for all json objects.
---@class Shape
---@field Textures table The collection of textures in the shape.
---@field Elements ShapeElement[] The elements of the shape.
---@field Animations Animation[] The animations for the shape.
---@field AnimationsByCrc32 table
---@field TextureWidth number The width of the texture. (default: 16)
---@field TextureHeight number The height of the texture (default: 16) 
---@field TextureSizes table
---@field JointsById table
---@field AttachmentPointsByCode table
Shape = {}

---@return Shape
function Shape.ctor() end

---@param context StreamingContext
function Shape.TrimTextureNamesAndResolveFaces(context) end

-- Attempts to resolve all references within the shape. Logs missing references them to the errorLogger
---@param errorLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param shapeNameForLogging string
function Shape.ResolveReferences(errorLogger, shapeNameForLogging) end

-- Prefixes texturePrefixCode to all textures in this shape. Required pre-step for stepparenting. The long arguments StepParentShape() calls this method.
---@param texturePrefixCode string
---@param damageEffect? number
---@return boolean
function Shape.SubclassForStepParenting(texturePrefixCode, damageEffect) end

-- Adds a step parented shape to this shape. If you plan to cache the childShape use the shorter argument method and call SubclassForStepParenting() only once on it
---@param childShape Shape The base shape for all json objects.
---@param texturePrefixCode string
---@param childLocationForLogging string
---@param parentLocationForLogging string
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param onTexture function
---@param damageEffect? number
---@return boolean
function Shape.StepParentShape(childShape, texturePrefixCode, childLocationForLogging, parentLocationForLogging, logger, onTexture, damageEffect) end

-- Adds a step parented shape to this shape, does not call the required pre-step SubclassForStepParenting()
---@param childShape Shape The base shape for all json objects.
---@param childLocationForLogging string
---@param parentLocationForLogging string
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param onTexture function
---@return boolean
function Shape.StepParentShape(childShape, childLocationForLogging, parentLocationForLogging, logger, onTexture) end

-- Collects all the elements in the shape recursively.
---@param elements ShapeElement[] A shape element built from JSON data within the model.
---@param elementsByName table
function Shape.CollectElements(elements, elementsByName) end

---@param requireJointsForElements string
function Shape.ResolveAndLoadJoints(requireJointsForElements) end

-- Resolves all joints and loads them.
---@param errorLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param shapeName string
---@param requireJointsForElements string
function Shape.ResolveAndFindJoints(errorLogger, shapeName, requireJointsForElements) end

-- Tries to load the shape from the specified JSON file, with error logging
-- Returns null if the file could not be found, or if there was an error
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param shapePath string
---@return Shape # The base shape for all json objects.
function Shape.TryGet(api, shapePath) end

-- Tries to load the shape from the specified JSON file, with error logging
-- Returns null if the file could not be found, or if there was an error
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param shapePath AssetLocation Defines a complete path to an assets, including it's domain
---@return Shape # The base shape for all json objects.
function Shape.TryGet(api, shapePath) end

---@param wildcardpath string
---@param onElement function
function Shape.WalkElements(wildcardpath, onElement) end

-- Recursively searches the element by name from the shape.
---@param name string
---@param stringComparison? string
---@return ShapeElement # A shape element built from JSON data within the model.
function Shape.GetElementByName(name, stringComparison) end

-- Removes *all* elements with given name
---@param name string
---@param stringComparison? string
---@return boolean
function Shape.RemoveElementByName(name, stringComparison) end

---@return ShapeElement[] # A shape element built from JSON data within the model.
function Shape.CloneElements() end

---@return Animation[] # Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
function Shape.CloneAnimations() end

-- Creates a deep copy of the shape
---@return Shape # The base shape for all json objects.
function Shape.Clone() end

---@return userdata
function Shape.GetType() end

---@return string
function Shape.ToString() end

---@param obj userdata
---@return boolean
function Shape.Equals(obj) end

---@return number
function Shape.GetHashCode() end


