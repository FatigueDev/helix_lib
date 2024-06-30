---@meta

---@class DrawSkillIconDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
DrawSkillIconDelegate = {}

---@param object userdata
---@param method IntPtr
---@return DrawSkillIconDelegate
function DrawSkillIconDelegate.ctor(object, method) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
function DrawSkillIconDelegate.Invoke(cr, x, y, width, height, rgba) end

---@param cr Context
---@param x number
---@param y number
---@param width number
---@param height number
---@param rgba number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function DrawSkillIconDelegate.BeginInvoke(cr, x, y, width, height, rgba, callback, object) end

---@param result IAsyncResult
function DrawSkillIconDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function DrawSkillIconDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function DrawSkillIconDelegate.Equals(obj) end

---@return function
function DrawSkillIconDelegate.GetInvocationList() end

---@return number
function DrawSkillIconDelegate.GetHashCode() end

---@return userdata
function DrawSkillIconDelegate.get_Target() end

---@return userdata
function DrawSkillIconDelegate.Clone() end

---@param args userdata
---@return userdata
function DrawSkillIconDelegate.DynamicInvoke(args) end

---@return function
function DrawSkillIconDelegate.get_Method() end

---@return userdata
function DrawSkillIconDelegate.GetType() end

---@return string
function DrawSkillIconDelegate.ToString() end


