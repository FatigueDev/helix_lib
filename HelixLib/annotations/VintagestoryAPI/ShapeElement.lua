---@meta

-- A shape element built from JSON data within the model.
---@class ShapeElement
---@field Name string The name of the ShapeElement
---@field From number
---@field To number
---@field Shade boolean Whether or not the shape element is shaded.
---@field GradientShade boolean
---@field Faces table The faces of the shape element by name (will normally be null except during object deserialization: use FacesResolved instead!)
---@field FacesResolved ShapeElementFace[] An array holding the faces of this shape element in BlockFacing order: North, East, South, West, Up, Down.  May be null if not present or not enabled.
---@field RotationOrigin number The origin point for rotation.
---@field RotationX number The forward vertical rotation of the shape element.
---@field RotationY number The forward vertical rotation of the shape element.
---@field RotationZ number The left/right tilt of the shape element
---@field ScaleX number How far away are the left/right sides of the shape from the center
---@field ScaleY number How far away are the top/bottom sides of the shape from the center
---@field ScaleZ number How far away are the front/back sides of the shape from the center.
---@field ClimateColorMap string
---@field SeasonColorMap string
---@field RenderPass number
---@field ZOffset number
---@field DisableRandomDrawOffset boolean Set this to true to disable randomDrawOffset and randomRotations on this specific element (e.g. used for the ice element of Coopers Reeds in Ice)
---@field Children ShapeElement[] The child shapes of this shape element
---@field AttachmentPoints AttachmentPoint[] The attachment points for this shape.
---@field StepParentName string The "remote" parent for this element
---@field ParentElement ShapeElement The parent element reference for this shape.
---@field JointId number The id of the joint attached to the parent element.
---@field Color number For entity animations
---@field DamageEffect number
---@field inverseModelTransform number
---@field Logger ILogger A static reference to the logger (null on a server) - we don't want to hold a reference to the platform or api in every ShapeElement
---@field locationForLogging userdata
ShapeElement = {}

---@return ShapeElement
function ShapeElement.ctor() end

-- Walks the element tree and collects all parents, starting with the root element
---@return table
function ShapeElement.GetParentPath() end

function ShapeElement.CacheInverseTransformMatrix() end

-- Returns the full inverse model matrix (includes all parent transforms)
---@return number
function ShapeElement.GetInverseModelMatrix() end

---@param animVersion number
---@param output? number
---@param tf? ElementPose The position of an element.
---@return number
function ShapeElement.GetLocalTransformMatrix(animVersion, output, tf) end

---@return ShapeElement # A shape element built from JSON data within the model.
function ShapeElement.Clone() end

---@param jointId number
function ShapeElement.SetJointIdRecursive(jointId) end

function ShapeElement.CacheInverseTransformMatrixRecursive() end

---@param onElem function
function ShapeElement.WalkRecursive(onElem) end

---@return userdata
function ShapeElement.GetType() end

---@return string
function ShapeElement.ToString() end

---@param obj userdata
---@return boolean
function ShapeElement.Equals(obj) end

---@return number
function ShapeElement.GetHashCode() end


