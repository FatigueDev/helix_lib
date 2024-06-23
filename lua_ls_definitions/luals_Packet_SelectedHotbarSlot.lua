---@meta Packet_SelectedHotbarSlot
---@class Packet_SelectedHotbarSlot: Object
---@field ctor fun(): Packet_SelectedHotbarSlot
---@field SetSlotNumber fun(value: number): nil
---@field SetClientId fun(value: number): nil
---@field SetItemstack fun(value: Packet_ItemStack): nil
---@field SetOffhandStack fun(value: Packet_ItemStack): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_SelectedHotbarSlot = {}