---@meta NvidiaGPUFix64
---@class NvidiaGPUFix64: Object
---@field SOP_CheckProfile fun(profileName: string): boolean
---@field SOP_RemoveProfile fun(profileName: string): number
---@field SOP_SetProfile fun(profileName: string, applicationName: string): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
NvidiaGPUFix64 = {}
