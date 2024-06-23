---@meta NativeFunctions
---@class NativeFunctions: Object
---@field GetStdHandle fun(nStdHandle: number): IntPtr
---@field GetConsoleMode fun(hConsoleHandle: IntPtr, lpMode: Unumber&): boolean
---@field SetConsoleMode fun(hConsoleHandle: IntPtr, dwMode: Unumber): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
NativeFunctions = {}
