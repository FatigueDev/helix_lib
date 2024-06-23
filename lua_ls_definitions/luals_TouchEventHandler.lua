---@meta TouchEventHandler
---@class TouchEventHandler: Object
---@field OnTouchStart fun(e: TouchEventArgs): nil
---@field OnTouchMove fun(e: TouchEventArgs): nil
---@field OnTouchEnd fun(e: TouchEventArgs): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
TouchEventHandler = {}
