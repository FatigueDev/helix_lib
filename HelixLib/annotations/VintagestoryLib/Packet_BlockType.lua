---@meta

---@class Packet_BlockType
---@field TextureCodes string
---@field TextureCodesCount number
---@field TextureCodesLength number
---@field CompositeTextures Packet_CompositeTexture[]
---@field CompositeTexturesCount number
---@field CompositeTexturesLength number
---@field InventoryTextureCodes string
---@field InventoryTextureCodesCount number
---@field InventoryTextureCodesLength number
---@field InventoryCompositeTextures Packet_CompositeTexture[]
---@field InventoryCompositeTexturesCount number
---@field InventoryCompositeTexturesLength number
---@field BlockId number
---@field Code string
---@field EntityClass string
---@field Behaviors Packet_Behavior[]
---@field BehaviorsCount number
---@field BehaviorsLength number
---@field EntityBehaviors string
---@field RenderPass number
---@field DrawType number
---@field MatterState number
---@field WalkSpeedFloat number
---@field IsSlipperyWalk boolean
---@field Sounds Packet_BlockSoundSet
---@field HeldSounds Packet_HeldSoundSet
---@field LightHsv number
---@field LightHsvCount number
---@field LightHsvLength number
---@field VertexFlags number
---@field Climbable number
---@field CreativeInventoryTabs string
---@field CreativeInventoryTabsCount number
---@field CreativeInventoryTabsLength number
---@field CreativeInventoryStacks number
---@field SideOpaqueFlags number
---@field SideOpaqueFlagsCount number
---@field SideOpaqueFlagsLength number
---@field FaceCullMode number
---@field SideSolidFlags number
---@field SideSolidFlagsCount number
---@field SideSolidFlagsLength number
---@field SeasonColorMap string
---@field ClimateColorMap string
---@field CullFaces number
---@field Replacable number
---@field LightAbsorption number
---@field HardnessLevel number
---@field Resistance number
---@field BlockMaterial number
---@field Moddata number
---@field Shape Packet_CompositeShape
---@field ShapeInventory Packet_CompositeShape
---@field Ambientocclusion number
---@field CollisionBoxes Packet_Cube[]
---@field CollisionBoxesCount number
---@field CollisionBoxesLength number
---@field SelectionBoxes Packet_Cube[]
---@field SelectionBoxesCount number
---@field SelectionBoxesLength number
---@field ParticleCollisionBoxes Packet_Cube[]
---@field ParticleCollisionBoxesCount number
---@field ParticleCollisionBoxesLength number
---@field Blockclass string
---@field GuiTransform Packet_ModelTransform
---@field FpHandTransform Packet_ModelTransform
---@field TpHandTransform Packet_ModelTransform
---@field TpOffHandTransform Packet_ModelTransform
---@field GroundTransform Packet_ModelTransform
---@field Fertility number
---@field ParticleProperties number
---@field ParticlePropertiesQuantity number
---@field RandomDrawOffset number
---@field RandomizeAxes number
---@field RandomizeRotations number
---@field Drops Packet_BlockDrop[]
---@field DropsCount number
---@field DropsLength number
---@field LiquidLevel number
---@field Attributes string
---@field CombustibleProps Packet_CombustibleProperties
---@field SideAo number
---@field SideAoCount number
---@field SideAoLength number
---@field NeighbourSideAo number
---@field GrindingProps Packet_GrindingProperties
---@field NutritionProps Packet_NutritionProperties
---@field TransitionableProps Packet_TransitionableProperties[]
---@field TransitionablePropsCount number
---@field TransitionablePropsLength number
---@field MaxStackSize number
---@field CropProps number
---@field CropPropBehaviors string
---@field CropPropBehaviorsCount number
---@field CropPropBehaviorsLength number
---@field MaterialDensity number
---@field AttackPower number
---@field AttackRange number
---@field LiquidSelectable number
---@field MiningTier number
---@field RequiredMiningTier number
---@field Miningmaterial number
---@field MiningmaterialCount number
---@field MiningmaterialLength number
---@field Miningmaterialspeed number
---@field MiningmaterialspeedCount number
---@field MiningmaterialspeedLength number
---@field DragMultiplierFloat number
---@field StorageFlags number
---@field RenderAlphaTest number
---@field HeldTpHitAnimation string
---@field HeldRightTpIdleAnimation string
---@field HeldLeftTpIdleAnimation string
---@field HeldTpUseAnimation string
---@field RainPermeable number
---@field LiquidCode string
---@field Variant Packet_VariantPart[]
---@field VariantCount number
---@field VariantLength number
---@field Lod0shape Packet_CompositeShape
---@field Frostable number
---@field CrushingProps Packet_CrushingProperties
---@field RandomSizeAdjust number
---@field Lod2shape Packet_CompositeShape
---@field DoNotRenderAtLod2 number
---@field Width number
---@field Height number
---@field Length number
---@field IsMissing number
---@field Durability number
---@field HeldLeftReadyAnimation string
---@field HeldRightReadyAnimation string
---@field TextureCodesFieldID number
---@field CompositeTexturesFieldID number
---@field InventoryTextureCodesFieldID number
---@field InventoryCompositeTexturesFieldID number
---@field BlockIdFieldID number
---@field CodeFieldID number
---@field EntityClassFieldID number
---@field BehaviorsFieldID number
---@field EntityBehaviorsFieldID number
---@field RenderPassFieldID number
---@field DrawTypeFieldID number
---@field MatterStateFieldID number
---@field WalkSpeedFloatFieldID number
---@field IsSlipperyWalkFieldID number
---@field SoundsFieldID number
---@field HeldSoundsFieldID number
---@field LightHsvFieldID number
---@field VertexFlagsFieldID number
---@field ClimbableFieldID number
---@field CreativeInventoryTabsFieldID number
---@field CreativeInventoryStacksFieldID number
---@field SideOpaqueFlagsFieldID number
---@field FaceCullModeFieldID number
---@field SideSolidFlagsFieldID number
---@field SeasonColorMapFieldID number
---@field ClimateColorMapFieldID number
---@field CullFacesFieldID number
---@field ReplacableFieldID number
---@field LightAbsorptionFieldID number
---@field HardnessLevelFieldID number
---@field ResistanceFieldID number
---@field BlockMaterialFieldID number
---@field ModdataFieldID number
---@field ShapeFieldID number
---@field ShapeInventoryFieldID number
---@field AmbientocclusionFieldID number
---@field CollisionBoxesFieldID number
---@field SelectionBoxesFieldID number
---@field ParticleCollisionBoxesFieldID number
---@field BlockclassFieldID number
---@field GuiTransformFieldID number
---@field FpHandTransformFieldID number
---@field TpHandTransformFieldID number
---@field TpOffHandTransformFieldID number
---@field GroundTransformFieldID number
---@field FertilityFieldID number
---@field ParticlePropertiesFieldID number
---@field ParticlePropertiesQuantityFieldID number
---@field RandomDrawOffsetFieldID number
---@field RandomizeAxesFieldID number
---@field RandomizeRotationsFieldID number
---@field DropsFieldID number
---@field LiquidLevelFieldID number
---@field AttributesFieldID number
---@field CombustiblePropsFieldID number
---@field SideAoFieldID number
---@field NeighbourSideAoFieldID number
---@field GrindingPropsFieldID number
---@field NutritionPropsFieldID number
---@field TransitionablePropsFieldID number
---@field MaxStackSizeFieldID number
---@field CropPropsFieldID number
---@field CropPropBehaviorsFieldID number
---@field MaterialDensityFieldID number
---@field AttackPowerFieldID number
---@field AttackRangeFieldID number
---@field LiquidSelectableFieldID number
---@field MiningTierFieldID number
---@field RequiredMiningTierFieldID number
---@field MiningmaterialFieldID number
---@field MiningmaterialspeedFieldID number
---@field DragMultiplierFloatFieldID number
---@field StorageFlagsFieldID number
---@field RenderAlphaTestFieldID number
---@field HeldTpHitAnimationFieldID number
---@field HeldRightTpIdleAnimationFieldID number
---@field HeldLeftTpIdleAnimationFieldID number
---@field HeldTpUseAnimationFieldID number
---@field RainPermeableFieldID number
---@field LiquidCodeFieldID number
---@field VariantFieldID number
---@field Lod0shapeFieldID number
---@field FrostableFieldID number
---@field CrushingPropsFieldID number
---@field RandomSizeAdjustFieldID number
---@field Lod2shapeFieldID number
---@field DoNotRenderAtLod2FieldID number
---@field WidthFieldID number
---@field HeightFieldID number
---@field LengthFieldID number
---@field IsMissingFieldID number
---@field DurabilityFieldID number
---@field HeldLeftReadyAnimationFieldID number
---@field HeldRightReadyAnimationFieldID number
Packet_BlockType = {}

---@return Packet_BlockType
function Packet_BlockType.ctor() end

---@return string
function Packet_BlockType.GetTextureCodes() end

---@param value string
---@param count number
---@param length number
function Packet_BlockType.SetTextureCodes(value, count, length) end

---@param value string
function Packet_BlockType.SetTextureCodes(value) end

---@return number
function Packet_BlockType.GetTextureCodesCount() end

---@param value string
function Packet_BlockType.TextureCodesAdd(value) end

---@return Packet_CompositeTexture[]
function Packet_BlockType.GetCompositeTextures() end

---@param value Packet_CompositeTexture[]
---@param count number
---@param length number
function Packet_BlockType.SetCompositeTextures(value, count, length) end

---@param value Packet_CompositeTexture[]
function Packet_BlockType.SetCompositeTextures(value) end

---@return number
function Packet_BlockType.GetCompositeTexturesCount() end

---@param value Packet_CompositeTexture
function Packet_BlockType.CompositeTexturesAdd(value) end

---@return string
function Packet_BlockType.GetInventoryTextureCodes() end

---@param value string
---@param count number
---@param length number
function Packet_BlockType.SetInventoryTextureCodes(value, count, length) end

---@param value string
function Packet_BlockType.SetInventoryTextureCodes(value) end

---@return number
function Packet_BlockType.GetInventoryTextureCodesCount() end

---@param value string
function Packet_BlockType.InventoryTextureCodesAdd(value) end

---@return Packet_CompositeTexture[]
function Packet_BlockType.GetInventoryCompositeTextures() end

---@param value Packet_CompositeTexture[]
---@param count number
---@param length number
function Packet_BlockType.SetInventoryCompositeTextures(value, count, length) end

---@param value Packet_CompositeTexture[]
function Packet_BlockType.SetInventoryCompositeTextures(value) end

---@return number
function Packet_BlockType.GetInventoryCompositeTexturesCount() end

---@param value Packet_CompositeTexture
function Packet_BlockType.InventoryCompositeTexturesAdd(value) end

---@param value number
function Packet_BlockType.SetBlockId(value) end

---@param value string
function Packet_BlockType.SetCode(value) end

---@param value string
function Packet_BlockType.SetEntityClass(value) end

---@return Packet_Behavior[]
function Packet_BlockType.GetBehaviors() end

---@param value Packet_Behavior[]
---@param count number
---@param length number
function Packet_BlockType.SetBehaviors(value, count, length) end

---@param value Packet_Behavior[]
function Packet_BlockType.SetBehaviors(value) end

---@return number
function Packet_BlockType.GetBehaviorsCount() end

---@param value Packet_Behavior
function Packet_BlockType.BehaviorsAdd(value) end

---@param value string
function Packet_BlockType.SetEntityBehaviors(value) end

---@param value number
function Packet_BlockType.SetRenderPass(value) end

---@param value number
function Packet_BlockType.SetDrawType(value) end

---@param value number
function Packet_BlockType.SetMatterState(value) end

---@param value number
function Packet_BlockType.SetWalkSpeedFloat(value) end

---@param value boolean
function Packet_BlockType.SetIsSlipperyWalk(value) end

---@param value Packet_BlockSoundSet
function Packet_BlockType.SetSounds(value) end

---@param value Packet_HeldSoundSet
function Packet_BlockType.SetHeldSounds(value) end

---@return number
function Packet_BlockType.GetLightHsv() end

---@param value number
---@param count number
---@param length number
function Packet_BlockType.SetLightHsv(value, count, length) end

---@param value number
function Packet_BlockType.SetLightHsv(value) end

---@return number
function Packet_BlockType.GetLightHsvCount() end

---@param value number
function Packet_BlockType.LightHsvAdd(value) end

---@param value number
function Packet_BlockType.SetVertexFlags(value) end

---@param value number
function Packet_BlockType.SetClimbable(value) end

---@return string
function Packet_BlockType.GetCreativeInventoryTabs() end

---@param value string
---@param count number
---@param length number
function Packet_BlockType.SetCreativeInventoryTabs(value, count, length) end

---@param value string
function Packet_BlockType.SetCreativeInventoryTabs(value) end

---@return number
function Packet_BlockType.GetCreativeInventoryTabsCount() end

---@param value string
function Packet_BlockType.CreativeInventoryTabsAdd(value) end

---@param value number
function Packet_BlockType.SetCreativeInventoryStacks(value) end

---@return number
function Packet_BlockType.GetSideOpaqueFlags() end

---@param value number
---@param count number
---@param length number
function Packet_BlockType.SetSideOpaqueFlags(value, count, length) end

---@param value number
function Packet_BlockType.SetSideOpaqueFlags(value) end

---@return number
function Packet_BlockType.GetSideOpaqueFlagsCount() end

---@param value number
function Packet_BlockType.SideOpaqueFlagsAdd(value) end

---@param value number
function Packet_BlockType.SetFaceCullMode(value) end

---@return number
function Packet_BlockType.GetSideSolidFlags() end

---@param value number
---@param count number
---@param length number
function Packet_BlockType.SetSideSolidFlags(value, count, length) end

---@param value number
function Packet_BlockType.SetSideSolidFlags(value) end

---@return number
function Packet_BlockType.GetSideSolidFlagsCount() end

---@param value number
function Packet_BlockType.SideSolidFlagsAdd(value) end

---@param value string
function Packet_BlockType.SetSeasonColorMap(value) end

---@param value string
function Packet_BlockType.SetClimateColorMap(value) end

---@param value number
function Packet_BlockType.SetCullFaces(value) end

---@param value number
function Packet_BlockType.SetReplacable(value) end

---@param value number
function Packet_BlockType.SetLightAbsorption(value) end

---@param value number
function Packet_BlockType.SetHardnessLevel(value) end

---@param value number
function Packet_BlockType.SetResistance(value) end

---@param value number
function Packet_BlockType.SetBlockMaterial(value) end

---@param value number
function Packet_BlockType.SetModdata(value) end

---@param value Packet_CompositeShape
function Packet_BlockType.SetShape(value) end

---@param value Packet_CompositeShape
function Packet_BlockType.SetShapeInventory(value) end

---@param value number
function Packet_BlockType.SetAmbientocclusion(value) end

---@return Packet_Cube[]
function Packet_BlockType.GetCollisionBoxes() end

---@param value Packet_Cube[]
---@param count number
---@param length number
function Packet_BlockType.SetCollisionBoxes(value, count, length) end

---@param value Packet_Cube[]
function Packet_BlockType.SetCollisionBoxes(value) end

---@return number
function Packet_BlockType.GetCollisionBoxesCount() end

---@param value Packet_Cube
function Packet_BlockType.CollisionBoxesAdd(value) end

---@return Packet_Cube[]
function Packet_BlockType.GetSelectionBoxes() end

---@param value Packet_Cube[]
---@param count number
---@param length number
function Packet_BlockType.SetSelectionBoxes(value, count, length) end

---@param value Packet_Cube[]
function Packet_BlockType.SetSelectionBoxes(value) end

---@return number
function Packet_BlockType.GetSelectionBoxesCount() end

---@param value Packet_Cube
function Packet_BlockType.SelectionBoxesAdd(value) end

---@return Packet_Cube[]
function Packet_BlockType.GetParticleCollisionBoxes() end

---@param value Packet_Cube[]
---@param count number
---@param length number
function Packet_BlockType.SetParticleCollisionBoxes(value, count, length) end

---@param value Packet_Cube[]
function Packet_BlockType.SetParticleCollisionBoxes(value) end

---@return number
function Packet_BlockType.GetParticleCollisionBoxesCount() end

---@param value Packet_Cube
function Packet_BlockType.ParticleCollisionBoxesAdd(value) end

---@param value string
function Packet_BlockType.SetBlockclass(value) end

---@param value Packet_ModelTransform
function Packet_BlockType.SetGuiTransform(value) end

---@param value Packet_ModelTransform
function Packet_BlockType.SetFpHandTransform(value) end

---@param value Packet_ModelTransform
function Packet_BlockType.SetTpHandTransform(value) end

---@param value Packet_ModelTransform
function Packet_BlockType.SetTpOffHandTransform(value) end

---@param value Packet_ModelTransform
function Packet_BlockType.SetGroundTransform(value) end

---@param value number
function Packet_BlockType.SetFertility(value) end

---@param value number
function Packet_BlockType.SetParticleProperties(value) end

---@param value number
function Packet_BlockType.SetParticlePropertiesQuantity(value) end

---@param value number
function Packet_BlockType.SetRandomDrawOffset(value) end

---@param value number
function Packet_BlockType.SetRandomizeAxes(value) end

---@param value number
function Packet_BlockType.SetRandomizeRotations(value) end

---@return Packet_BlockDrop[]
function Packet_BlockType.GetDrops() end

---@param value Packet_BlockDrop[]
---@param count number
---@param length number
function Packet_BlockType.SetDrops(value, count, length) end

---@param value Packet_BlockDrop[]
function Packet_BlockType.SetDrops(value) end

---@return number
function Packet_BlockType.GetDropsCount() end

---@param value Packet_BlockDrop
function Packet_BlockType.DropsAdd(value) end

---@param value number
function Packet_BlockType.SetLiquidLevel(value) end

---@param value string
function Packet_BlockType.SetAttributes(value) end

---@param value Packet_CombustibleProperties
function Packet_BlockType.SetCombustibleProps(value) end

---@return number
function Packet_BlockType.GetSideAo() end

---@param value number
---@param count number
---@param length number
function Packet_BlockType.SetSideAo(value, count, length) end

---@param value number
function Packet_BlockType.SetSideAo(value) end

---@return number
function Packet_BlockType.GetSideAoCount() end

---@param value number
function Packet_BlockType.SideAoAdd(value) end

---@param value number
function Packet_BlockType.SetNeighbourSideAo(value) end

---@param value Packet_GrindingProperties
function Packet_BlockType.SetGrindingProps(value) end

---@param value Packet_NutritionProperties
function Packet_BlockType.SetNutritionProps(value) end

---@return Packet_TransitionableProperties[]
function Packet_BlockType.GetTransitionableProps() end

---@param value Packet_TransitionableProperties[]
---@param count number
---@param length number
function Packet_BlockType.SetTransitionableProps(value, count, length) end

---@param value Packet_TransitionableProperties[]
function Packet_BlockType.SetTransitionableProps(value) end

---@return number
function Packet_BlockType.GetTransitionablePropsCount() end

---@param value Packet_TransitionableProperties
function Packet_BlockType.TransitionablePropsAdd(value) end

---@param value number
function Packet_BlockType.SetMaxStackSize(value) end

---@param value number
function Packet_BlockType.SetCropProps(value) end

---@return string
function Packet_BlockType.GetCropPropBehaviors() end

---@param value string
---@param count number
---@param length number
function Packet_BlockType.SetCropPropBehaviors(value, count, length) end

---@param value string
function Packet_BlockType.SetCropPropBehaviors(value) end

---@return number
function Packet_BlockType.GetCropPropBehaviorsCount() end

---@param value string
function Packet_BlockType.CropPropBehaviorsAdd(value) end

---@param value number
function Packet_BlockType.SetMaterialDensity(value) end

---@param value number
function Packet_BlockType.SetAttackPower(value) end

---@param value number
function Packet_BlockType.SetAttackRange(value) end

---@param value number
function Packet_BlockType.SetLiquidSelectable(value) end

---@param value number
function Packet_BlockType.SetMiningTier(value) end

---@param value number
function Packet_BlockType.SetRequiredMiningTier(value) end

---@return number
function Packet_BlockType.GetMiningmaterial() end

---@param value number
---@param count number
---@param length number
function Packet_BlockType.SetMiningmaterial(value, count, length) end

---@param value number
function Packet_BlockType.SetMiningmaterial(value) end

---@return number
function Packet_BlockType.GetMiningmaterialCount() end

---@param value number
function Packet_BlockType.MiningmaterialAdd(value) end

---@return number
function Packet_BlockType.GetMiningmaterialspeed() end

---@param value number
---@param count number
---@param length number
function Packet_BlockType.SetMiningmaterialspeed(value, count, length) end

---@param value number
function Packet_BlockType.SetMiningmaterialspeed(value) end

---@return number
function Packet_BlockType.GetMiningmaterialspeedCount() end

---@param value number
function Packet_BlockType.MiningmaterialspeedAdd(value) end

---@param value number
function Packet_BlockType.SetDragMultiplierFloat(value) end

---@param value number
function Packet_BlockType.SetStorageFlags(value) end

---@param value number
function Packet_BlockType.SetRenderAlphaTest(value) end

---@param value string
function Packet_BlockType.SetHeldTpHitAnimation(value) end

---@param value string
function Packet_BlockType.SetHeldRightTpIdleAnimation(value) end

---@param value string
function Packet_BlockType.SetHeldLeftTpIdleAnimation(value) end

---@param value string
function Packet_BlockType.SetHeldTpUseAnimation(value) end

---@param value number
function Packet_BlockType.SetRainPermeable(value) end

---@param value string
function Packet_BlockType.SetLiquidCode(value) end

---@return Packet_VariantPart[]
function Packet_BlockType.GetVariant() end

---@param value Packet_VariantPart[]
---@param count number
---@param length number
function Packet_BlockType.SetVariant(value, count, length) end

---@param value Packet_VariantPart[]
function Packet_BlockType.SetVariant(value) end

---@return number
function Packet_BlockType.GetVariantCount() end

---@param value Packet_VariantPart
function Packet_BlockType.VariantAdd(value) end

---@param value Packet_CompositeShape
function Packet_BlockType.SetLod0shape(value) end

---@param value number
function Packet_BlockType.SetFrostable(value) end

---@param value Packet_CrushingProperties
function Packet_BlockType.SetCrushingProps(value) end

---@param value number
function Packet_BlockType.SetRandomSizeAdjust(value) end

---@param value Packet_CompositeShape
function Packet_BlockType.SetLod2shape(value) end

---@param value number
function Packet_BlockType.SetDoNotRenderAtLod2(value) end

---@param value number
function Packet_BlockType.SetWidth(value) end

---@param value number
function Packet_BlockType.SetHeight(value) end

---@param value number
function Packet_BlockType.SetLength(value) end

---@param value number
function Packet_BlockType.SetIsMissing(value) end

---@param value number
function Packet_BlockType.SetDurability(value) end

---@param value string
function Packet_BlockType.SetHeldLeftReadyAnimation(value) end

---@param value string
function Packet_BlockType.SetHeldRightReadyAnimation(value) end

---@return userdata
function Packet_BlockType.GetType() end

---@return string
function Packet_BlockType.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockType.Equals(obj) end

---@return number
function Packet_BlockType.GetHashCode() end


