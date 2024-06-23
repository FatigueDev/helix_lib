---@meta TypeConverter
---@class TypeConverter: Object
---@field ctor fun(): TypeConverter
---@field CanConvertFrom fun(sourceType: any): boolean
---@overload fun(context: IanyDescriptorContext, sourceType: any): boolean
---@field CanConvertTo fun(destinationType: any): boolean
---@overload fun(context: IanyDescriptorContext, destinationType: any): boolean
---@field ConvertFrom fun(value: table): table
---@overload fun(context: IanyDescriptorContext, culture: CultureInfo, value: table): table
---@field ConvertFromInvariantString fun(text: string): table
---@overload fun(context: IanyDescriptorContext, text: string): table
---@field ConvertFromString fun(text: string): table
---@overload fun(context: IanyDescriptorContext, text: string): table
---@overload fun(context: IanyDescriptorContext, culture: CultureInfo, text: string): table
---@field ConvertTo fun(value: table, destinationType: any): table
---@overload fun(context: IanyDescriptorContext, culture: CultureInfo, value: table, destinationType: any): table
---@field ConvertToInvariantString fun(value: table): string
---@overload fun(context: IanyDescriptorContext, value: table): string
---@field ConvertToString fun(value: table): string
---@overload fun(context: IanyDescriptorContext, value: table): string
---@overload fun(context: IanyDescriptorContext, culture: CultureInfo, value: table): string
---@field CreateInstance fun(propertyValues: IDictionary): table
---@overload fun(context: IanyDescriptorContext, propertyValues: IDictionary): table
---@field GetCreateInstanceSupported fun(): boolean
---@overload fun(context: IanyDescriptorContext): boolean
---@field GetProperties fun(value: table): PropertyDescriptorCollection
---@overload fun(context: IanyDescriptorContext, value: table): PropertyDescriptorCollection
---@overload fun(context: IanyDescriptorContext, value: table, attributes: Attribute[]): PropertyDescriptorCollection
---@field GetPropertiesSupported fun(): boolean
---@overload fun(context: IanyDescriptorContext): boolean
---@field GetStandardValues fun(): ICollection
---@overload fun(context: IanyDescriptorContext): StandardValuesCollection
---@field GetStandardValuesExclusive fun(): boolean
---@overload fun(context: IanyDescriptorContext): boolean
---@field GetStandardValuesSupported fun(): boolean
---@overload fun(context: IanyDescriptorContext): boolean
---@field IsValid fun(value: table): boolean
---@overload fun(context: IanyDescriptorContext, value: table): boolean
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
TypeConverter = {}
