---@meta

---@class Quaterniond
Quaterniond = {}

---@return Quaterniond
function Quaterniond.ctor() end

---@return number
function Quaterniond.Create() end

---@param output number
---@param a number
---@param b number
---@return number
function Quaterniond.RotationTo(output, a, b) end

---@param output number
---@param view number
---@param right number
---@param up number
---@return number
function Quaterniond.SetAxes(output, view, right, up) end

---@param a number
---@return number
function Quaterniond.CloneIt(a) end

---@param x number
---@param y number
---@param z number
---@param w number
---@return number
function Quaterniond.FromValues(x, y, z, w) end

---@param output number
---@param a number
---@return number
function Quaterniond.Copy(output, a) end

---@param output number
---@param x number
---@param y number
---@param z number
---@param w number
---@return number
function Quaterniond.Set(output, x, y, z, w) end

---@param output number
---@return number
function Quaterniond.Identity_(output) end

---@param output number
---@param axis number
---@param rad number
---@return number
function Quaterniond.SetAxisAngle(output, axis, rad) end

---@param output number
---@param a number
---@param b number
---@return number
function Quaterniond.Add(output, a, b) end

---@param output number
---@param a number
---@param b number
---@return number
function Quaterniond.Multiply(output, a, b) end

---@param output number
---@param a number
---@param b number
---@return number
function Quaterniond.Scale(output, a, b) end

---@param output number
---@param a number
---@param rad number
---@return number
function Quaterniond.RotateX(output, a, rad) end

---@param output number
---@param a number
---@param rad number
---@return number
function Quaterniond.RotateY(output, a, rad) end

---@param output number
---@param a number
---@param rad number
---@return number
function Quaterniond.RotateZ(output, a, rad) end

---@param output number
---@param a number
---@return number
function Quaterniond.CalculateW(output, a) end

---@param a number
---@param b number
---@return number
function Quaterniond.Dot(a, b) end

---@param quat number
---@return number
function Quaterniond.ToEulerAngles(quat) end

---@param output number
---@param a number
---@param b number
---@param t number
---@return number
function Quaterniond.Lerp(output, a, b, t) end

---@param output number
---@param a number
---@param b number
---@param t number
---@return number
function Quaterniond.Slerp(output, a, b, t) end

---@param output number
---@param a number
---@return number
function Quaterniond.Invert(output, a) end

---@param output number
---@param a number
---@return number
function Quaterniond.Conjugate(output, a) end

---@param a number
---@return number
function Quaterniond.Length_(a) end

---@param a number
---@return number
function Quaterniond.SquaredLength(a) end

---@param output number
---@param a number
---@return number
function Quaterniond.Normalize(output, a) end

---@param output number
---@param m number
---@return number
function Quaterniond.FromMat3(output, m) end

---@return userdata
function Quaterniond.GetType() end

---@return string
function Quaterniond.ToString() end

---@param obj userdata
---@return boolean
function Quaterniond.Equals(obj) end

---@return number
function Quaterniond.GetHashCode() end


