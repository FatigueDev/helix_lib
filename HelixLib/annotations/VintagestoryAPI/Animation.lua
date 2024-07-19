---@meta

-- Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@class Animation
---@field QuantityFrames number
---@field Name string
---@field Code string
---@field Version number
---@field EaseAnimationSpeed boolean
---@field KeyFrames AnimationKeyFrame[]
---@field OnActivityStopped EnumEntityActivityStoppedHandling
---@field OnAnimationEnd EnumEntityAnimationEndHandling
---@field CodeCrc32 number
---@field PrevNextKeyFrameByFrame AnimationFrame[][]
Animation = {}

---@return Animation
function Animation.ctor() end

-- Compiles the animation into a bunch of matrices, 31 matrices per frame.
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@param recursive? boolean
function Animation.GenerateAllFrames(rootElements, jointsById, recursive) end

---@return Animation # Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
function Animation.Clone() end

---@return userdata
function Animation.GetType() end

---@return string
function Animation.ToString() end

---@param obj userdata
---@return boolean
function Animation.Equals(obj) end

---@return number
function Animation.GetHashCode() end


