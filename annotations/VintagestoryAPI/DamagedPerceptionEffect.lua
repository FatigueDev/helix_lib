---@meta

---@class DamagedPerceptionEffect: PerceptionEffect, PerceptionEffect
---@field Code string
---@field PerceptionEffectId number
---@field Intensity number
---@field DurationHours number
DamagedPerceptionEffect = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return DamagedPerceptionEffect
function DamagedPerceptionEffect.ctor(capi) end

---@param player EntityPlayer
function DamagedPerceptionEffect.OnOwnPlayerDataReceived(player) end

---@param dt number
function DamagedPerceptionEffect.OnBeforeGameRender(dt) end

---@param modelMat Matrixf
function DamagedPerceptionEffect.ApplyToFpHand(modelMat) end

---@param entityPlr EntityPlayer
---@param modelMatrix number
---@param playerIntensity? Nullable`1
function DamagedPerceptionEffect.ApplyToTpPlayer(entityPlr, modelMatrix, playerIntensity) end

function DamagedPerceptionEffect.NowDisabled() end

---@param intensity number
function DamagedPerceptionEffect.NowActive(intensity) end

---@return userdata
function DamagedPerceptionEffect.GetType() end

---@return string
function DamagedPerceptionEffect.ToString() end

---@param obj userdata
---@return boolean
function DamagedPerceptionEffect.Equals(obj) end

---@return number
function DamagedPerceptionEffect.GetHashCode() end


