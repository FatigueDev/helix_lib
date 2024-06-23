---@meta LoadBalancedTask
---@class LoadBalancedTask
---@field DoWork fun(): nil
---@field ShouldExit fun(): boolean
---@field HandleException fun(e: Exception): nil
---@field StartWorkerThread fun(threadnum: number): nil
LoadBalancedTask = {}
