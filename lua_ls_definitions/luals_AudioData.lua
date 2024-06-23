---@meta AudioData
---@class AudioData: Object
---@field Load fun(): nil
---@field Load_Async fun(onCompleted: MainThreadAction): number
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
AudioData = {}
