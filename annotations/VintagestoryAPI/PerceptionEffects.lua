---@meta

---@class PerceptionEffects
---@field RegisteredEffects ICollection`1
PerceptionEffects = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return PerceptionEffects
function PerceptionEffects.ctor(capi) end

---@param effect PerceptionEffect
---@param code string
function PerceptionEffects.RegisterPerceptionEffect(effect, code) end

---@return ICollection`1
function PerceptionEffects.get_RegisteredEffects() end

---@param code string
---@param intensity number
---@param on? Nullable`1
function PerceptionEffects.TriggerEffect(code, intensity, on) end

---@param dt number
function PerceptionEffects.OnBeforeGameRender(dt) end

---@param eplr EntityPlayer
function PerceptionEffects.OnOwnPlayerDataReceived(eplr) end

---@param modelMat Matrixf
function PerceptionEffects.ApplyToFpHand(modelMat) end

---@param entityPlr EntityPlayer
---@param modelMatrix number
---@param playerIntensity? Nullable`1
function PerceptionEffects.ApplyToTpPlayer(entityPlr, modelMatrix, playerIntensity) end

---@return userdata
function PerceptionEffects.GetType() end

---@return string
function PerceptionEffects.ToString() end

---@param obj userdata
---@return boolean
function PerceptionEffects.Equals(obj) end

---@return number
function PerceptionEffects.GetHashCode() end


