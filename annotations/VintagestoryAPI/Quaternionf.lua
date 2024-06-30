---@meta

---@class Quaternionf
Quaternionf = {}

---@return Quaternionf
function Quaternionf.ctor() end

---@return number
function Quaternionf.Create() end

---@param output number
---@param a number
---@param b number
---@return number
function Quaternionf.RotationTo(output, a, b) end

---@param output number
---@param view number
---@param right number
---@param up number
---@return number
function Quaternionf.SetAxes(output, view, right, up) end

---@param a number
---@return number
function Quaternionf.CloneIt(a) end

---@param x number
---@param y number
---@param z number
---@param w number
---@return number
function Quaternionf.FromValues(x, y, z, w) end

---@param output number
---@param a number
---@return number
function Quaternionf.Copy(output, a) end

---@param output number
---@param x number
---@param y number
---@param z number
---@param w number
---@return number
function Quaternionf.Set(output, x, y, z, w) end

---@param output number
---@return number
function Quaternionf.Identity_(output) end

---@param output number
---@param axis number
---@param rad number
---@return number
function Quaternionf.SetAxisAngle(output, axis, rad) end

---@param output number
---@param a number
---@param b number
---@return number
function Quaternionf.Add(output, a, b) end

---@param output number
---@param a number
---@param b number
---@return number
function Quaternionf.Multiply(output, a, b) end

---@param output number
---@param a number
---@param b number
---@return number
function Quaternionf.Mul(output, a, b) end

---@param output number
---@param a number
---@param b number
---@return number
function Quaternionf.Scale(output, a, b) end

---@param output number
---@param a number
---@param rad number
---@return number
function Quaternionf.RotateX(output, a, rad) end

---@param output number
---@param a number
---@param rad number
---@return number
function Quaternionf.RotateY(output, a, rad) end

---@param output number
---@param a number
---@param rad number
---@return number
function Quaternionf.RotateZ(output, a, rad) end

---@param output number
---@param a number
---@return number
function Quaternionf.CalculateW(output, a) end

---@param a number
---@param b number
---@return number
function Quaternionf.Dot(a, b) end

---@param quat number
---@return number
function Quaternionf.ToEulerAngles(quat) end

---@param output number
---@param a number
---@param b number
---@param t number
---@return number
function Quaternionf.Lerp(output, a, b, t) end

---@param output number
---@param a number
---@param b number
---@param t number
---@return number
function Quaternionf.Slerp(output, a, b, t) end

---@param output number
---@param a number
---@return number
function Quaternionf.Invert(output, a) end

---@param output number
---@param a number
---@return number
function Quaternionf.Conjugate(output, a) end

---@param a number
---@return number
function Quaternionf.Length_(a) end

---@param a number
---@return number
function Quaternionf.Len(a) end

---@param a number
---@return number
function Quaternionf.SquaredLength(a) end

---@param a number
---@return number
function Quaternionf.SqrLen(a) end

---@param output number
---@param a number
---@return number
function Quaternionf.Normalize(output, a) end

---@param output number
---@param m number
---@return number
function Quaternionf.FromMat3(output, m) end

---@return userdata
function Quaternionf.GetType() end

---@return string
function Quaternionf.ToString() end

---@param obj userdata
---@return boolean
function Quaternionf.Equals(obj) end

---@return number
function Quaternionf.GetHashCode() end


