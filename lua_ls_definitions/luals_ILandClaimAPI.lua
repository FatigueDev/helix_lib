---@meta ILandClaimAPI
---@class ILandClaimAPI
---@field get_All fun(): any[]
---@field TestAccess fun(player: IPlayer, pos: BlockPos, accessFlag: EnumBlockAccessFlags): EnumWorldAccessResponse
---@field TryAccess fun(player: IPlayer, pos: BlockPos, accessFlag: EnumBlockAccessFlags): boolean
---@field Get fun(pos: BlockPos): LandClaim[]
---@field Add fun(claim: LandClaim): nil
---@field Remove fun(claim: LandClaim): boolean
---@field All any[]
ILandClaimAPI = {}
