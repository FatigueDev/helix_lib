---@meta

---@class ServerAnimator: ClientAnimator, AnimatorBase, ClientAnimator, IAnimator
---@field CalculateMatrices boolean
---@field Matrices4x3 number
---@field ActiveAnimationCount number
---@field RunningAnimations RunningAnimation[]
---@field loadFully boolean
---@field rootElements ShapeElement[]
---@field RootPoses table
---@field jointsById table
---@field anims RunningAnimation[]
---@field TransformationMatrices4x3 number We skip the last row - https://stackoverflow.com/questions/32565827/whats-the-purpose-of-magic-4-of-last-row-in-matrix-4x4-for-3d-graphics 
---@field TransformationMatricesDefaultPose4x3 number The entities default pose. Meaning for most elements this is the identity matrix, with exception of individually controlled elements such as the head.
---@field AttachmentPointByCode table
---@field CurAnims RunningAnimation[]
ServerAnimator = {}

---@param walkSpeedSupplier WalkSpeedSupplierDelegate
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@param onAnimationStoppedListener? function
---@param loadFully? boolean
---@return ServerAnimator
function ServerAnimator.ctor(walkSpeedSupplier, animations, rootElements, jointsById, onAnimationStoppedListener, loadFully) end
---@param walkSpeedSupplier WalkSpeedSupplierDelegate
---@param rootPoses table
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@param onAnimationStoppedListener? function
---@param loadFully? boolean
---@return ServerAnimator
function ServerAnimator.ctor(walkSpeedSupplier, rootPoses, animations, rootElements, jointsById, onAnimationStoppedListener, loadFully) end

---@param entity Entity The basic class for all entities in the game
---@param rootPoses table
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@return ServerAnimator
function ServerAnimator.CreateForEntity(entity, rootPoses, animations, rootElements, jointsById) end

---@param entity Entity The basic class for all entities in the game
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@return ServerAnimator
function ServerAnimator.CreateForEntity(entity, animations, rootElements, jointsById) end

---@param name string
---@param stringComparison? string
---@return ElementPose # The position of an element.
function ServerAnimator.GetPosebyName(name, stringComparison) end

---@param activeAnimationsByAnimCode table
---@param dt number
function ServerAnimator.OnFrame(activeAnimationsByAnimCode, dt) end

---@return boolean
function ServerAnimator.get_CalculateMatrices() end

---@param value boolean
function ServerAnimator.set_CalculateMatrices(value) end

---@return number
function ServerAnimator.get_Matrices4x3() end

---@return number
function ServerAnimator.get_ActiveAnimationCount() end

---@return RunningAnimation[]
function ServerAnimator.get_RunningAnimations() end

---@param code string
---@return RunningAnimation
function ServerAnimator.GetAnimationState(code) end

---@return string
function ServerAnimator.DumpCurrentState() end

---@param code string
---@return AttachmentPointAndPose
function ServerAnimator.GetAttachmentPointPose(code) end

---@return userdata
function ServerAnimator.GetType() end

---@return string
function ServerAnimator.ToString() end

---@param obj userdata
---@return boolean
function ServerAnimator.Equals(obj) end

---@return number
function ServerAnimator.GetHashCode() end


