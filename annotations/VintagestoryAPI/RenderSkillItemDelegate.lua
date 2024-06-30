---@meta

---@class RenderSkillItemDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
RenderSkillItemDelegate = {}

---@param object userdata
---@param method IntPtr
---@return RenderSkillItemDelegate
function RenderSkillItemDelegate.ctor(object, method) end

---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@param dt number
---@param atPosX number
---@param atPosY number
function RenderSkillItemDelegate.Invoke(code, dt, atPosX, atPosY) end

---@param code AssetLocation Defines a complete path to an assets, including it's domain
---@param dt number
---@param atPosX number
---@param atPosY number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function RenderSkillItemDelegate.BeginInvoke(code, dt, atPosX, atPosY, callback, object) end

---@param result IAsyncResult
function RenderSkillItemDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function RenderSkillItemDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function RenderSkillItemDelegate.Equals(obj) end

---@return function
function RenderSkillItemDelegate.GetInvocationList() end

---@return number
function RenderSkillItemDelegate.GetHashCode() end

---@return userdata
function RenderSkillItemDelegate.get_Target() end

---@return userdata
function RenderSkillItemDelegate.Clone() end

---@param args userdata
---@return userdata
function RenderSkillItemDelegate.DynamicInvoke(args) end

---@return function
function RenderSkillItemDelegate.get_Method() end

---@return userdata
function RenderSkillItemDelegate.GetType() end

---@return string
function RenderSkillItemDelegate.ToString() end


