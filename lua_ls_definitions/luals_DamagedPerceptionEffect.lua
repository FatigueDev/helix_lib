---@meta DamagedPerceptionEffect
---@class DamagedPerceptionEffect: PerceptionEffect
---@field ctor fun(capi: ICoreClientAPI): DamagedPerceptionEffect
---@field OnOwnPlayerDataReceived fun(player: EntityPlayer): nil
---@field OnBeforeGameRender fun(dt: Single): nil
---@field ApplyToFpHand fun(modelMat: Matrixf): nil
---@field ApplyToTpPlayer fun(entityPlr: EntityPlayer, modelMatrix: Single[], playerIntensity: Nullable`1): nil
---@field NowDisabled fun(): nil
---@field NowActive fun(intensity: Single): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
DamagedPerceptionEffect = {}