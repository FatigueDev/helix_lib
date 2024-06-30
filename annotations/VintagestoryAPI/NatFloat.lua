---@meta

-- A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
---@class NatFloat
---@field Zero NatFloat Always 0
---@field One NatFloat Always 1
---@field offset number
---@field avg number
---@field var number
---@field dist EnumDistribution
NatFloat = {}

---@param averagevalue number
---@param variance number
---@param distribution EnumDistribution The distribution of the random numbers 
---@return NatFloat
function NatFloat.ctor(averagevalue, variance, distribution) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.get_Zero() end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.get_One() end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createInvexp(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createStrongInvexp(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createStrongerInvexp(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createUniform(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createGauss(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createNarrowGauss(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createInvGauss(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createTri(averagevalue, variance) end

---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createDirac(averagevalue, variance) end

---@param distribution EnumDistribution The distribution of the random numbers 
---@param averagevalue number
---@param variance number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.create(distribution, averagevalue, variance) end

---@param value number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.copyWithOffset(value) end

---@param value number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.addOffset(value) end

---@param offset number
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.setOffset(offset) end

---@return number
function NatFloat.nextFloat() end

---@param multiplier number
---@return number
function NatFloat.nextFloat(multiplier) end

---@param multiplier number
---@param rand Random
---@return number
function NatFloat.nextFloat(multiplier, rand) end

---@param multiplier number
---@param rand LCGRandom An lcg random generator, particularly suitable for worldgen See also https://en.wikipedia.org/wiki/Linear_congruential_generator
---@return number
function NatFloat.nextFloat(multiplier, rand) end

-- Clamps supplied value to avg-var and avg+var
---@param value number
---@return number
function NatFloat.ClampToRange(value) end

---@param reader BinaryReader
---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.createFromBytes(reader) end

---@return NatFloat # A more natural random number generator (nature usually doesn't grow by the exact same numbers nor does it completely randomly)
function NatFloat.Clone() end

---@param writer BinaryWriter
function NatFloat.ToBytes(writer) end

---@param reader BinaryReader
function NatFloat.FromBytes(reader) end

---@return userdata
function NatFloat.GetType() end

---@return string
function NatFloat.ToString() end

---@param obj userdata
---@return boolean
function NatFloat.Equals(obj) end

---@return number
function NatFloat.GetHashCode() end


