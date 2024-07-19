---@meta

---@class DrunkPerceptionEffect: PerceptionEffect, PerceptionEffect
---@field Code string
---@field PerceptionEffectId number
---@field Intensity number
---@field DurationHours number
DrunkPerceptionEffect = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return DrunkPerceptionEffect
function DrunkPerceptionEffect.ctor(capi) end

---@param dt number
function DrunkPerceptionEffect.OnBeforeGameRender(dt) end

---@param modelMat Matrixf
function DrunkPerceptionEffect.ApplyToFpHand(modelMat) end

---@param entityPlr EntityPlayer
---@param modelMatrix number
---@param playerIntensity? Nullable`1
function DrunkPerceptionEffect.ApplyToTpPlayer(entityPlr, modelMatrix, playerIntensity) end

---@param intensity number
function DrunkPerceptionEffect.NowActive(intensity) end

---@param eplr EntityPlayer
function DrunkPerceptionEffect.OnOwnPlayerDataReceived(eplr) end

function DrunkPerceptionEffect.NowDisabled() end

---@return userdata
function DrunkPerceptionEffect.GetType() end

---@return string
function DrunkPerceptionEffect.ToString() end

---@param obj userdata
---@return boolean
function DrunkPerceptionEffect.Equals(obj) end

---@return number
function DrunkPerceptionEffect.GetHashCode() end


