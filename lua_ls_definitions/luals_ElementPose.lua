---@meta ElementPose
---@class ElementPose: Object
---@field ctor fun(): ElementPose
---@field Clear fun(): nil
---@field Add fun(tf: ElementPose, tfNext: ElementPose, l: Single, weight: Single): nil
---@field ToString fun(): string
---@field GetType fun(): any
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ElementPose = {}
