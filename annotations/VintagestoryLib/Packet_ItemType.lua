---@meta

---@class Packet_ItemType
---@field ItemId number
---@field MaxStackSize number
---@field Code string
---@field Behaviors Packet_Behavior[]
---@field BehaviorsCount number
---@field BehaviorsLength number
---@field CompositeTextures Packet_CompositeTexture[]
---@field CompositeTexturesCount number
---@field CompositeTexturesLength number
---@field Durability number
---@field Miningmaterial number
---@field MiningmaterialCount number
---@field MiningmaterialLength number
---@field Miningmaterialspeed number
---@field MiningmaterialspeedCount number
---@field MiningmaterialspeedLength number
---@field Damagedby number
---@field DamagedbyCount number
---@field DamagedbyLength number
---@field CreativeInventoryStacks number
---@field CreativeInventoryTabs string
---@field CreativeInventoryTabsCount number
---@field CreativeInventoryTabsLength number
---@field GuiTransform Packet_ModelTransform
---@field FpHandTransform Packet_ModelTransform
---@field TpHandTransform Packet_ModelTransform
---@field TpOffHandTransform Packet_ModelTransform
---@field GroundTransform Packet_ModelTransform
---@field Attributes string
---@field CombustibleProps Packet_CombustibleProperties
---@field NutritionProps Packet_NutritionProperties
---@field GrindingProps Packet_GrindingProperties
---@field CrushingProps Packet_CrushingProperties
---@field TransitionableProps Packet_TransitionableProperties[]
---@field TransitionablePropsCount number
---@field TransitionablePropsLength number
---@field Shape Packet_CompositeShape
---@field TextureCodes string
---@field TextureCodesCount number
---@field TextureCodesLength number
---@field ItemClass string
---@field Tool number
---@field MaterialDensity number
---@field AttackPower number
---@field AttackRange number
---@field LiquidSelectable number
---@field MiningTier number
---@field StorageFlags number
---@field RenderAlphaTest number
---@field HeldTpHitAnimation string
---@field HeldRightTpIdleAnimation string
---@field HeldLeftTpIdleAnimation string
---@field HeldTpUseAnimation string
---@field MatterState number
---@field Variant Packet_VariantPart[]
---@field VariantCount number
---@field VariantLength number
---@field HeldSounds Packet_HeldSoundSet
---@field Width number
---@field Height number
---@field Length number
---@field LightHsv number
---@field LightHsvCount number
---@field LightHsvLength number
---@field IsMissing number
---@field HeldLeftReadyAnimation string
---@field HeldRightReadyAnimation string
---@field ItemIdFieldID number
---@field MaxStackSizeFieldID number
---@field CodeFieldID number
---@field BehaviorsFieldID number
---@field CompositeTexturesFieldID number
---@field DurabilityFieldID number
---@field MiningmaterialFieldID number
---@field MiningmaterialspeedFieldID number
---@field DamagedbyFieldID number
---@field CreativeInventoryStacksFieldID number
---@field CreativeInventoryTabsFieldID number
---@field GuiTransformFieldID number
---@field FpHandTransformFieldID number
---@field TpHandTransformFieldID number
---@field TpOffHandTransformFieldID number
---@field GroundTransformFieldID number
---@field AttributesFieldID number
---@field CombustiblePropsFieldID number
---@field NutritionPropsFieldID number
---@field GrindingPropsFieldID number
---@field CrushingPropsFieldID number
---@field TransitionablePropsFieldID number
---@field ShapeFieldID number
---@field TextureCodesFieldID number
---@field ItemClassFieldID number
---@field ToolFieldID number
---@field MaterialDensityFieldID number
---@field AttackPowerFieldID number
---@field AttackRangeFieldID number
---@field LiquidSelectableFieldID number
---@field MiningTierFieldID number
---@field StorageFlagsFieldID number
---@field RenderAlphaTestFieldID number
---@field HeldTpHitAnimationFieldID number
---@field HeldRightTpIdleAnimationFieldID number
---@field HeldLeftTpIdleAnimationFieldID number
---@field HeldTpUseAnimationFieldID number
---@field MatterStateFieldID number
---@field VariantFieldID number
---@field HeldSoundsFieldID number
---@field WidthFieldID number
---@field HeightFieldID number
---@field LengthFieldID number
---@field LightHsvFieldID number
---@field IsMissingFieldID number
---@field HeldLeftReadyAnimationFieldID number
---@field HeldRightReadyAnimationFieldID number
Packet_ItemType = {}

---@return Packet_ItemType
function Packet_ItemType.ctor() end

---@param value number
function Packet_ItemType.SetItemId(value) end

---@param value number
function Packet_ItemType.SetMaxStackSize(value) end

---@param value string
function Packet_ItemType.SetCode(value) end

---@return Packet_Behavior[]
function Packet_ItemType.GetBehaviors() end

---@param value Packet_Behavior[]
---@param count number
---@param length number
function Packet_ItemType.SetBehaviors(value, count, length) end

---@param value Packet_Behavior[]
function Packet_ItemType.SetBehaviors(value) end

---@return number
function Packet_ItemType.GetBehaviorsCount() end

---@param value Packet_Behavior
function Packet_ItemType.BehaviorsAdd(value) end

---@return Packet_CompositeTexture[]
function Packet_ItemType.GetCompositeTextures() end

---@param value Packet_CompositeTexture[]
---@param count number
---@param length number
function Packet_ItemType.SetCompositeTextures(value, count, length) end

---@param value Packet_CompositeTexture[]
function Packet_ItemType.SetCompositeTextures(value) end

---@return number
function Packet_ItemType.GetCompositeTexturesCount() end

---@param value Packet_CompositeTexture
function Packet_ItemType.CompositeTexturesAdd(value) end

---@param value number
function Packet_ItemType.SetDurability(value) end

---@return number
function Packet_ItemType.GetMiningmaterial() end

---@param value number
---@param count number
---@param length number
function Packet_ItemType.SetMiningmaterial(value, count, length) end

---@param value number
function Packet_ItemType.SetMiningmaterial(value) end

---@return number
function Packet_ItemType.GetMiningmaterialCount() end

---@param value number
function Packet_ItemType.MiningmaterialAdd(value) end

---@return number
function Packet_ItemType.GetMiningmaterialspeed() end

---@param value number
---@param count number
---@param length number
function Packet_ItemType.SetMiningmaterialspeed(value, count, length) end

---@param value number
function Packet_ItemType.SetMiningmaterialspeed(value) end

---@return number
function Packet_ItemType.GetMiningmaterialspeedCount() end

---@param value number
function Packet_ItemType.MiningmaterialspeedAdd(value) end

---@return number
function Packet_ItemType.GetDamagedby() end

---@param value number
---@param count number
---@param length number
function Packet_ItemType.SetDamagedby(value, count, length) end

---@param value number
function Packet_ItemType.SetDamagedby(value) end

---@return number
function Packet_ItemType.GetDamagedbyCount() end

---@param value number
function Packet_ItemType.DamagedbyAdd(value) end

---@param value number
function Packet_ItemType.SetCreativeInventoryStacks(value) end

---@return string
function Packet_ItemType.GetCreativeInventoryTabs() end

---@param value string
---@param count number
---@param length number
function Packet_ItemType.SetCreativeInventoryTabs(value, count, length) end

---@param value string
function Packet_ItemType.SetCreativeInventoryTabs(value) end

---@return number
function Packet_ItemType.GetCreativeInventoryTabsCount() end

---@param value string
function Packet_ItemType.CreativeInventoryTabsAdd(value) end

---@param value Packet_ModelTransform
function Packet_ItemType.SetGuiTransform(value) end

---@param value Packet_ModelTransform
function Packet_ItemType.SetFpHandTransform(value) end

---@param value Packet_ModelTransform
function Packet_ItemType.SetTpHandTransform(value) end

---@param value Packet_ModelTransform
function Packet_ItemType.SetTpOffHandTransform(value) end

---@param value Packet_ModelTransform
function Packet_ItemType.SetGroundTransform(value) end

---@param value string
function Packet_ItemType.SetAttributes(value) end

---@param value Packet_CombustibleProperties
function Packet_ItemType.SetCombustibleProps(value) end

---@param value Packet_NutritionProperties
function Packet_ItemType.SetNutritionProps(value) end

---@param value Packet_GrindingProperties
function Packet_ItemType.SetGrindingProps(value) end

---@param value Packet_CrushingProperties
function Packet_ItemType.SetCrushingProps(value) end

---@return Packet_TransitionableProperties[]
function Packet_ItemType.GetTransitionableProps() end

---@param value Packet_TransitionableProperties[]
---@param count number
---@param length number
function Packet_ItemType.SetTransitionableProps(value, count, length) end

---@param value Packet_TransitionableProperties[]
function Packet_ItemType.SetTransitionableProps(value) end

---@return number
function Packet_ItemType.GetTransitionablePropsCount() end

---@param value Packet_TransitionableProperties
function Packet_ItemType.TransitionablePropsAdd(value) end

---@param value Packet_CompositeShape
function Packet_ItemType.SetShape(value) end

---@return string
function Packet_ItemType.GetTextureCodes() end

---@param value string
---@param count number
---@param length number
function Packet_ItemType.SetTextureCodes(value, count, length) end

---@param value string
function Packet_ItemType.SetTextureCodes(value) end

---@return number
function Packet_ItemType.GetTextureCodesCount() end

---@param value string
function Packet_ItemType.TextureCodesAdd(value) end

---@param value string
function Packet_ItemType.SetItemClass(value) end

---@param value number
function Packet_ItemType.SetTool(value) end

---@param value number
function Packet_ItemType.SetMaterialDensity(value) end

---@param value number
function Packet_ItemType.SetAttackPower(value) end

---@param value number
function Packet_ItemType.SetAttackRange(value) end

---@param value number
function Packet_ItemType.SetLiquidSelectable(value) end

---@param value number
function Packet_ItemType.SetMiningTier(value) end

---@param value number
function Packet_ItemType.SetStorageFlags(value) end

---@param value number
function Packet_ItemType.SetRenderAlphaTest(value) end

---@param value string
function Packet_ItemType.SetHeldTpHitAnimation(value) end

---@param value string
function Packet_ItemType.SetHeldRightTpIdleAnimation(value) end

---@param value string
function Packet_ItemType.SetHeldLeftTpIdleAnimation(value) end

---@param value string
function Packet_ItemType.SetHeldTpUseAnimation(value) end

---@param value number
function Packet_ItemType.SetMatterState(value) end

---@return Packet_VariantPart[]
function Packet_ItemType.GetVariant() end

---@param value Packet_VariantPart[]
---@param count number
---@param length number
function Packet_ItemType.SetVariant(value, count, length) end

---@param value Packet_VariantPart[]
function Packet_ItemType.SetVariant(value) end

---@return number
function Packet_ItemType.GetVariantCount() end

---@param value Packet_VariantPart
function Packet_ItemType.VariantAdd(value) end

---@param value Packet_HeldSoundSet
function Packet_ItemType.SetHeldSounds(value) end

---@param value number
function Packet_ItemType.SetWidth(value) end

---@param value number
function Packet_ItemType.SetHeight(value) end

---@param value number
function Packet_ItemType.SetLength(value) end

---@return number
function Packet_ItemType.GetLightHsv() end

---@param value number
---@param count number
---@param length number
function Packet_ItemType.SetLightHsv(value, count, length) end

---@param value number
function Packet_ItemType.SetLightHsv(value) end

---@return number
function Packet_ItemType.GetLightHsvCount() end

---@param value number
function Packet_ItemType.LightHsvAdd(value) end

---@param value number
function Packet_ItemType.SetIsMissing(value) end

---@param value string
function Packet_ItemType.SetHeldLeftReadyAnimation(value) end

---@param value string
function Packet_ItemType.SetHeldRightReadyAnimation(value) end

---@return userdata
function Packet_ItemType.GetType() end

---@return string
function Packet_ItemType.ToString() end

---@param obj userdata
---@return boolean
function Packet_ItemType.Equals(obj) end

---@return number
function Packet_ItemType.GetHashCode() end


