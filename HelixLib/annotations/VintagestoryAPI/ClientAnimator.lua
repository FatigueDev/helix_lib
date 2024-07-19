---@meta

-- Syncs every frame with entity.ActiveAnimationsByAnimCode, starts and stops animations when necessary  and does recursive interpolation on the rotation, position and scale value for each frame, for each element and for each active element this produces always correctly blended animations but is significantly more costly for the cpu when compared to the technique used by the AnimatorBase.
---@class ClientAnimator: AnimatorBase, AnimatorBase, IAnimator
---@field CalculateMatrices boolean
---@field Matrices4x3 number
---@field ActiveAnimationCount number
---@field RunningAnimations RunningAnimation[]
---@field rootElements ShapeElement[]
---@field RootPoses table
---@field jointsById table
---@field MaxConcurrentAnimations number
---@field anims RunningAnimation[]
---@field TransformationMatrices4x3 number We skip the last row - https://stackoverflow.com/questions/32565827/whats-the-purpose-of-magic-4-of-last-row-in-matrix-4x4-for-3d-graphics 
---@field TransformationMatricesDefaultPose4x3 number The entities default pose. Meaning for most elements this is the identity matrix, with exception of individually controlled elements such as the head.
---@field AttachmentPointByCode table
---@field CurAnims RunningAnimation[]
ClientAnimator = {}

---@param walkSpeedSupplier WalkSpeedSupplierDelegate
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param onAnimationStoppedListener? function
---@return ClientAnimator
function ClientAnimator.ctor(walkSpeedSupplier, animations, onAnimationStoppedListener) end
---@param walkSpeedSupplier WalkSpeedSupplierDelegate
---@param rootPoses table
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@param onAnimationStoppedListener? function
---@return ClientAnimator
function ClientAnimator.ctor(walkSpeedSupplier, rootPoses, animations, rootElements, jointsById, onAnimationStoppedListener) end
---@param walkSpeedSupplier WalkSpeedSupplierDelegate
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@param onAnimationStoppedListener? function
---@return ClientAnimator
function ClientAnimator.ctor(walkSpeedSupplier, animations, rootElements, jointsById, onAnimationStoppedListener) end

---@param entity Entity The basic class for all entities in the game
---@param rootPoses table
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@return ClientAnimator # Syncs every frame with entity.ActiveAnimationsByAnimCode, starts and stops animations when necessary  and does recursive interpolation on the rotation, position and scale value for each frame, for each element and for each active element this produces always correctly blended animations but is significantly more costly for the cpu when compared to the technique used by the AnimatorBase.
function ClientAnimator.CreateForEntity(entity, rootPoses, animations, rootElements, jointsById) end

---@param entity Entity The basic class for all entities in the game
---@param animations Animation[] Represents a shape animation and can calculate the transformation matrices for each frame to be sent to the shader Process 1. For each frame, for each root element, calculate the transformation matrix. Curent model matrix is identy mat. 1.1. Get previous and next key frame. Apply translation, rotation and scale to model matrix. 1.2. Store this matrix as animationmatrix in list 1.3. For each child element 1.3.1. Multiply local transformation matrix with the animation matrix. This matrix is now the curent model matrix. Go to 1 with child elements as root elems  2. For each frame, for each joint 2.1. Calculate the inverse model matrix  2.2. Multiply stored animationmatrix with the inverse model matrix  3. done
---@param rootElements ShapeElement[] A shape element built from JSON data within the model.
---@param jointsById table
---@return ClientAnimator # Syncs every frame with entity.ActiveAnimationsByAnimCode, starts and stops animations when necessary  and does recursive interpolation on the rotation, position and scale value for each frame, for each element and for each active element this produces always correctly blended animations but is significantly more costly for the cpu when compared to the technique used by the AnimatorBase.
function ClientAnimator.CreateForEntity(entity, animations, rootElements, jointsById) end

---@param name string
---@param stringComparison? string
---@return ElementPose # The position of an element.
function ClientAnimator.GetPosebyName(name, stringComparison) end

---@param activeAnimationsByAnimCode table
---@param dt number
function ClientAnimator.OnFrame(activeAnimationsByAnimCode, dt) end

---@return boolean
function ClientAnimator.get_CalculateMatrices() end

---@param value boolean
function ClientAnimator.set_CalculateMatrices(value) end

---@return number
function ClientAnimator.get_Matrices4x3() end

---@return number
function ClientAnimator.get_ActiveAnimationCount() end

---@return RunningAnimation[]
function ClientAnimator.get_RunningAnimations() end

---@param code string
---@return RunningAnimation
function ClientAnimator.GetAnimationState(code) end

---@return string
function ClientAnimator.DumpCurrentState() end

---@param code string
---@return AttachmentPointAndPose
function ClientAnimator.GetAttachmentPointPose(code) end

---@return userdata
function ClientAnimator.GetType() end

---@return string
function ClientAnimator.ToString() end

---@param obj userdata
---@return boolean
function ClientAnimator.Equals(obj) end

---@return number
function ClientAnimator.GetHashCode() end


