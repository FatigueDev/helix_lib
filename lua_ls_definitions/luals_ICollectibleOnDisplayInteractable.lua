---@meta ICollectibleOnDisplayInteractable
---@class ICollectibleOnDisplayInteractable
---@field OnInteractStart fun(inSlot: ItemSlot, byPlayer: IPlayer): boolean
---@field OnInteractStep fun(secondsUsed: Single, inSlot: ItemSlot, byPlayer: IPlayer): boolean
---@field OnInteractStop fun(secondsUsed: Single, inSlot: ItemSlot, byPlayer: IPlayer): nil
---@field OnInteractCancel fun(secondsUsed: Single, inSlot: ItemSlot, byPlayer: IPlayer, cancelReason: EnumItemUseCancelReason): boolean
ICollectibleOnDisplayInteractable = {}
