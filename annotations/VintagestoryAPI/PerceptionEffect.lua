---@meta

---@class PerceptionEffect
---@field Code string
---@field PerceptionEffectId number
---@field Intensity number
---@field DurationHours number
PerceptionEffect = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return PerceptionEffect
function PerceptionEffect.ctor(capi) end

---@param dt number
function PerceptionEffect.OnBeforeGameRender(dt) end

---@param eplr EntityPlayer
function PerceptionEffect.OnOwnPlayerDataReceived(eplr) end

---@param modelMat Matrixf
function PerceptionEffect.ApplyToFpHand(modelMat) end

---@param entityPlr EntityPlayer
---@param modelMatrix number
---@param playerIntensity? Nullable`1
function PerceptionEffect.ApplyToTpPlayer(entityPlr, modelMatrix, playerIntensity) end

function PerceptionEffect.NowDisabled() end

---@param intensity number
function PerceptionEffect.NowActive(intensity) end

---@return userdata
function PerceptionEffect.GetType() end

---@return string
function PerceptionEffect.ToString() end

---@param obj userdata
---@return boolean
function PerceptionEffect.Equals(obj) end

---@return number
function PerceptionEffect.GetHashCode() end


