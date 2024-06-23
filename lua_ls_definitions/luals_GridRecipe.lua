---@meta GridRecipe
---@class GridRecipe: Object
---@field ctor fun(): GridRecipe
---@field ResolveIngredients fun(world: IWorldAccessor): boolean
---@field GetNameToCodeMapping fun(world: IWorldAccessor): table<any, any>
---@field ConsumeInput fun(byPlayer: IPlayer, inputSlots: ItemSlot[], gridWidth: number): boolean
---@field Matches fun(forPlayer: IPlayer, ingredients: ItemSlot[], gridWidth: number): boolean
---@field MatchesAtPosition fun(colStart: number, rowStart: number, inputSlots: ItemSlot[], gridWidth: number): boolean
---@field GetInputStackForPatternCode fun(patternCode: string, inputSlots: ItemSlot[]): ItemStack
---@field GenerateOutputStack fun(inputSlots: ItemSlot[], outputSlot: ItemSlot): nil
---@field GetElementInGrid fun(row: number, col: number, stacks: T[], gridwidth: number): T
---@field GetGridIndex fun(row: number, col: number, stacks: T[], gridwidth: number): number
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader, resolver: IWorldAccessor): nil
---@field Clone fun(): GridRecipe
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
GridRecipe = {}
