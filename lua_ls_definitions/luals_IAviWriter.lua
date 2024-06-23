---@meta IAviWriter
---@class IAviWriter
---@field Open fun(filename: string, width: number, height: number): nil
---@field AddFrame fun(): nil
---@field Close fun(): nil
IAviWriter = {}
