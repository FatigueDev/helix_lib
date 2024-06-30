---@meta

---@class CollectibleNet
---@field DefGuiTransform ModelTransform
---@field DefFpHandTransform ModelTransform
---@field DefTpHandTransform ModelTransform
---@field DefTpOffHandTransform ModelTransform
---@field DefGroundTransform ModelTransform
CollectibleNet = {}


---@param p number
---@return number
function CollectibleNet.SerializeFloat(p) end

---@param p number
---@return number
function CollectibleNet.DeserializeFloat(p) end

---@param p number
---@return number
function CollectibleNet.SerializeDouble(p) end

---@param p number
---@return number
function CollectibleNet.DeserializeDouble(p) end

---@param p number
---@return number
function CollectibleNet.SerializeDoublePrecise(p) end

---@param p number
---@return number
function CollectibleNet.DeserializeDoublePrecise(p) end

---@param v number
---@return number
function CollectibleNet.SerializeFloatPrecise(v) end

---@param v number
---@return number
function CollectibleNet.DeserializeFloatPrecise(v) end

---@param v number
---@return number
function CollectibleNet.SerializePlayerPos(v) end

---@param v number
---@return number
function CollectibleNet.DeserializePlayerPos(v) end

---@param v number
---@return number
function CollectibleNet.SerializeFloatVeryPrecise(v) end

---@param v number
---@return number
function CollectibleNet.DeserializeFloatVeryPrecise(v) end

---@param sounds HeldSounds
---@return Packet_HeldSoundSet
function CollectibleNet.ToPacket(sounds) end

---@param variant OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@return Packet_VariantPart[]
function CollectibleNet.ToPacket(variant) end

---@param props FoodNutritionProperties
---@return Packet_NutritionProperties
function CollectibleNet.ToPacket(props) end

---@param mprops TransitionableProperties[]
---@return Packet_TransitionableProperties[]
function CollectibleNet.ToPacket(mprops) end

---@param val NatFloat A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
---@return Packet_NatFloat
function CollectibleNet.ToPacket(val) end

---@param val Packet_NatFloat
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function CollectibleNet.FromPacket(val) end

---@param props GrindingProperties
---@return Packet_GrindingProperties
function CollectibleNet.ToPacket(props) end

---@param props CrushingProperties
---@return Packet_CrushingProperties
function CollectibleNet.ToPacket(props) end

---@param p Packet_HeldSoundSet
---@return HeldSounds
function CollectibleNet.FromPacket(p) end

---@param pn Packet_GrindingProperties
---@param world IWorldAccessor Important interface to access the game world.
---@return GrindingProperties
function CollectibleNet.FromPacket(pn, world) end

---@param pn Packet_CrushingProperties
---@param world IWorldAccessor Important interface to access the game world.
---@return CrushingProperties
function CollectibleNet.FromPacket(pn, world) end

---@param pn Packet_NutritionProperties
---@param world IWorldAccessor Important interface to access the game world.
---@return FoodNutritionProperties
function CollectibleNet.FromPacket(pn, world) end

---@param pns Packet_TransitionableProperties[]
---@param world IWorldAccessor Important interface to access the game world.
---@return TransitionableProperties[]
function CollectibleNet.FromPacket(pns, world) end

---@param props CombustibleProperties Used for an items combustible value
---@return Packet_CombustibleProperties
function CollectibleNet.ToPacket(props) end

---@param pc Packet_CombustibleProperties
---@param world IWorldAccessor Important interface to access the game world.
---@return CombustibleProperties # Used for an items combustible value
function CollectibleNet.FromPacket(pc, world) end

---@param transform ModelTransform Used for transformations applied to a block or item model
---@return Packet_ModelTransform
function CollectibleNet.ToTransformPacket(transform) end

---@param p Packet_ModelTransform
---@return ModelTransform # Used for transformations applied to a block or item model
function CollectibleNet.FromTransformPacket(p) end

---@param packet Packet_CompositeShape
---@return CompositeShape
function CollectibleNet.FromPacket(packet) end

---@param shape CompositeShape
---@return Packet_CompositeShape
function CollectibleNet.ToPacket(shape) end

---@param packet Packet_CompositeTexture
---@return CompositeTexture # A single block texture
function CollectibleNet.FromPacket(packet) end

---@param variant Packet_VariantPart[]
---@param count number
---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function CollectibleNet.FromPacket(variant, count) end

---@param ct CompositeTexture A single block texture
---@return Packet_CompositeTexture
function CollectibleNet.ToPacket(ct) end

---@param textures CompositeTexture[] A single block texture
---@return Packet_CompositeTexture[]
function CollectibleNet.ToPackets(textures) end

---@return userdata
function CollectibleNet.GetType() end

---@return string
function CollectibleNet.ToString() end

---@param obj userdata
---@return boolean
function CollectibleNet.Equals(obj) end

---@return number
function CollectibleNet.GetHashCode() end


