---@meta

---@class AnimationMetaData
---@field Code string Unique identifier to be able to reference this AnimationMetaData instance
---@field Attributes JsonObject
---@field Animation string The animations code identifier that we want to play
---@field Weight number
---@field ElementWeight table
---@field AnimationSpeed number
---@field MulWithWalkSpeed boolean
---@field WeightCapFactor number This property can be used in cases where a animation with high weight is played alongside another animation with low element weight. In these cases, the easeIn become unaturally fast. Setting a value of 0.8f or similar here addresses this issue 0f = uncapped weight 0.5f = weight cannot exceed 2 1f = weight cannot exceed 1
---@field EaseInSpeed number A multiplier applied to the weight value to "ease in" the animation. Choose a high value for looping animations or it will be glitchy
---@field EaseOutSpeed number A multiplier applied to the weight value to "ease out" the animation. Choose a high value for looping animations or it will be glitchy
---@field TriggeredBy AnimationTrigger
---@field BlendMode EnumAnimationBlendMode
---@field ElementBlendMode table
---@field SupressDefaultAnimation boolean
---@field HoldEyePosAfterEasein number
---@field ClientSide boolean If true, the server does not sync this animation
---@field StartFrameOnce number
---@field CodeCrc32 number
---@field WasStartedFromTrigger boolean
AnimationMetaData = {}

---@return AnimationMetaData
function AnimationMetaData.ctor() end

---@param walkspeed number
---@return number
function AnimationMetaData.GetCurrentAnimationSpeed(walkspeed) end

---@return AnimationMetaData
function AnimationMetaData.Init() end

---@param animcode string
---@return number
function AnimationMetaData.GetCrc32(animcode) end

---@param currentActivities number
---@return boolean
function AnimationMetaData.Matches(currentActivities) end

---@return AnimationMetaData
function AnimationMetaData.Clone() end

---@param obj userdata
---@return boolean
function AnimationMetaData.Equals(obj) end

---@return number
function AnimationMetaData.GetHashCode() end

---@param writer BinaryWriter
function AnimationMetaData.ToBytes(writer) end

---@param reader BinaryReader
---@param version string
---@return AnimationMetaData
function AnimationMetaData.FromBytes(reader, version) end

---@return userdata
function AnimationMetaData.GetType() end

---@return string
function AnimationMetaData.ToString() end


