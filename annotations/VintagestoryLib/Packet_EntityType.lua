---@meta

---@class Packet_EntityType
---@field Code string
---@field Class string
---@field Renderer string
---@field Habitat number
---@field Drops number
---@field Shape Packet_CompositeShape
---@field Behaviors Packet_Behavior[]
---@field BehaviorsCount number
---@field BehaviorsLength number
---@field CollisionBoxLength number
---@field CollisionBoxHeight number
---@field DeadCollisionBoxLength number
---@field DeadCollisionBoxHeight number
---@field SelectionBoxLength number
---@field SelectionBoxHeight number
---@field DeadSelectionBoxLength number
---@field DeadSelectionBoxHeight number
---@field Attributes string
---@field SoundKeys string
---@field SoundKeysCount number
---@field SoundKeysLength number
---@field SoundNames string
---@field SoundNamesCount number
---@field SoundNamesLength number
---@field IdleSoundChance number
---@field IdleSoundRange number
---@field TextureCodes string
---@field TextureCodesCount number
---@field TextureCodesLength number
---@field CompositeTextures Packet_CompositeTexture[]
---@field CompositeTexturesCount number
---@field CompositeTexturesLength number
---@field Size number
---@field EyeHeight number
---@field SwimmingEyeHeight number
---@field Weight number
---@field CanClimb number
---@field AnimationMetaData number
---@field KnockbackResistance number
---@field GlowLevel number
---@field CanClimbAnywhere number
---@field ClimbTouchDistance number
---@field RotateModelOnClimb number
---@field FallDamage number
---@field FallDamageMultiplier number
---@field Variant Packet_VariantPart[]
---@field VariantCount number
---@field VariantLength number
---@field SizeGrowthFactor number
---@field PitchStep number
---@field Color string
---@field CodeFieldID number
---@field ClassFieldID number
---@field RendererFieldID number
---@field HabitatFieldID number
---@field DropsFieldID number
---@field ShapeFieldID number
---@field BehaviorsFieldID number
---@field CollisionBoxLengthFieldID number
---@field CollisionBoxHeightFieldID number
---@field DeadCollisionBoxLengthFieldID number
---@field DeadCollisionBoxHeightFieldID number
---@field SelectionBoxLengthFieldID number
---@field SelectionBoxHeightFieldID number
---@field DeadSelectionBoxLengthFieldID number
---@field DeadSelectionBoxHeightFieldID number
---@field AttributesFieldID number
---@field SoundKeysFieldID number
---@field SoundNamesFieldID number
---@field IdleSoundChanceFieldID number
---@field IdleSoundRangeFieldID number
---@field TextureCodesFieldID number
---@field CompositeTexturesFieldID number
---@field SizeFieldID number
---@field EyeHeightFieldID number
---@field SwimmingEyeHeightFieldID number
---@field WeightFieldID number
---@field CanClimbFieldID number
---@field AnimationMetaDataFieldID number
---@field KnockbackResistanceFieldID number
---@field GlowLevelFieldID number
---@field CanClimbAnywhereFieldID number
---@field ClimbTouchDistanceFieldID number
---@field RotateModelOnClimbFieldID number
---@field FallDamageFieldID number
---@field FallDamageMultiplierFieldID number
---@field VariantFieldID number
---@field SizeGrowthFactorFieldID number
---@field PitchStepFieldID number
---@field ColorFieldID number
Packet_EntityType = {}

---@return Packet_EntityType
function Packet_EntityType.ctor() end

---@param value string
function Packet_EntityType.SetCode(value) end

---@param value string
function Packet_EntityType.SetClass(value) end

---@param value string
function Packet_EntityType.SetRenderer(value) end

---@param value number
function Packet_EntityType.SetHabitat(value) end

---@param value number
function Packet_EntityType.SetDrops(value) end

---@param value Packet_CompositeShape
function Packet_EntityType.SetShape(value) end

---@return Packet_Behavior[]
function Packet_EntityType.GetBehaviors() end

---@param value Packet_Behavior[]
---@param count number
---@param length number
function Packet_EntityType.SetBehaviors(value, count, length) end

---@param value Packet_Behavior[]
function Packet_EntityType.SetBehaviors(value) end

---@return number
function Packet_EntityType.GetBehaviorsCount() end

---@param value Packet_Behavior
function Packet_EntityType.BehaviorsAdd(value) end

---@param value number
function Packet_EntityType.SetCollisionBoxLength(value) end

---@param value number
function Packet_EntityType.SetCollisionBoxHeight(value) end

---@param value number
function Packet_EntityType.SetDeadCollisionBoxLength(value) end

---@param value number
function Packet_EntityType.SetDeadCollisionBoxHeight(value) end

---@param value number
function Packet_EntityType.SetSelectionBoxLength(value) end

---@param value number
function Packet_EntityType.SetSelectionBoxHeight(value) end

---@param value number
function Packet_EntityType.SetDeadSelectionBoxLength(value) end

---@param value number
function Packet_EntityType.SetDeadSelectionBoxHeight(value) end

---@param value string
function Packet_EntityType.SetAttributes(value) end

---@return string
function Packet_EntityType.GetSoundKeys() end

---@param value string
---@param count number
---@param length number
function Packet_EntityType.SetSoundKeys(value, count, length) end

---@param value string
function Packet_EntityType.SetSoundKeys(value) end

---@return number
function Packet_EntityType.GetSoundKeysCount() end

---@param value string
function Packet_EntityType.SoundKeysAdd(value) end

---@return string
function Packet_EntityType.GetSoundNames() end

---@param value string
---@param count number
---@param length number
function Packet_EntityType.SetSoundNames(value, count, length) end

---@param value string
function Packet_EntityType.SetSoundNames(value) end

---@return number
function Packet_EntityType.GetSoundNamesCount() end

---@param value string
function Packet_EntityType.SoundNamesAdd(value) end

---@param value number
function Packet_EntityType.SetIdleSoundChance(value) end

---@param value number
function Packet_EntityType.SetIdleSoundRange(value) end

---@return string
function Packet_EntityType.GetTextureCodes() end

---@param value string
---@param count number
---@param length number
function Packet_EntityType.SetTextureCodes(value, count, length) end

---@param value string
function Packet_EntityType.SetTextureCodes(value) end

---@return number
function Packet_EntityType.GetTextureCodesCount() end

---@param value string
function Packet_EntityType.TextureCodesAdd(value) end

---@return Packet_CompositeTexture[]
function Packet_EntityType.GetCompositeTextures() end

---@param value Packet_CompositeTexture[]
---@param count number
---@param length number
function Packet_EntityType.SetCompositeTextures(value, count, length) end

---@param value Packet_CompositeTexture[]
function Packet_EntityType.SetCompositeTextures(value) end

---@return number
function Packet_EntityType.GetCompositeTexturesCount() end

---@param value Packet_CompositeTexture
function Packet_EntityType.CompositeTexturesAdd(value) end

---@param value number
function Packet_EntityType.SetSize(value) end

---@param value number
function Packet_EntityType.SetEyeHeight(value) end

---@param value number
function Packet_EntityType.SetSwimmingEyeHeight(value) end

---@param value number
function Packet_EntityType.SetWeight(value) end

---@param value number
function Packet_EntityType.SetCanClimb(value) end

---@param value number
function Packet_EntityType.SetAnimationMetaData(value) end

---@param value number
function Packet_EntityType.SetKnockbackResistance(value) end

---@param value number
function Packet_EntityType.SetGlowLevel(value) end

---@param value number
function Packet_EntityType.SetCanClimbAnywhere(value) end

---@param value number
function Packet_EntityType.SetClimbTouchDistance(value) end

---@param value number
function Packet_EntityType.SetRotateModelOnClimb(value) end

---@param value number
function Packet_EntityType.SetFallDamage(value) end

---@param value number
function Packet_EntityType.SetFallDamageMultiplier(value) end

---@return Packet_VariantPart[]
function Packet_EntityType.GetVariant() end

---@param value Packet_VariantPart[]
---@param count number
---@param length number
function Packet_EntityType.SetVariant(value, count, length) end

---@param value Packet_VariantPart[]
function Packet_EntityType.SetVariant(value) end

---@return number
function Packet_EntityType.GetVariantCount() end

---@param value Packet_VariantPart
function Packet_EntityType.VariantAdd(value) end

---@param value number
function Packet_EntityType.SetSizeGrowthFactor(value) end

---@param value number
function Packet_EntityType.SetPitchStep(value) end

---@param value string
function Packet_EntityType.SetColor(value) end

---@return userdata
function Packet_EntityType.GetType() end

---@return string
function Packet_EntityType.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityType.Equals(obj) end

---@return number
function Packet_EntityType.GetHashCode() end


