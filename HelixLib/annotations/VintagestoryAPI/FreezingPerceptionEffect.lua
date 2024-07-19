---@meta

---@class FreezingPerceptionEffect: PerceptionEffect, PerceptionEffect
---@field Code string
---@field PerceptionEffectId number
---@field Intensity number
---@field DurationHours number
FreezingPerceptionEffect = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return FreezingPerceptionEffect
function FreezingPerceptionEffect.ctor(capi) end

---@param dt number
function FreezingPerceptionEffect.OnBeforeGameRender(dt) end

---@param eplr EntityPlayer
function FreezingPerceptionEffect.OnOwnPlayerDataReceived(eplr) end

---@param modelMat Matrixf
function FreezingPerceptionEffect.ApplyToFpHand(modelMat) end

---@param entityPlr EntityPlayer
---@param modelMatrix number
---@param playerIntensity? Nullable`1
function FreezingPerceptionEffect.ApplyToTpPlayer(entityPlr, modelMatrix, playerIntensity) end

function FreezingPerceptionEffect.NowDisabled() end

---@param intensity number
function FreezingPerceptionEffect.NowActive(intensity) end

---@return userdata
function FreezingPerceptionEffect.GetType() end

---@return string
function FreezingPerceptionEffect.ToString() end

---@param obj userdata
---@return boolean
function FreezingPerceptionEffect.Equals(obj) end

---@return number
function FreezingPerceptionEffect.GetHashCode() end


