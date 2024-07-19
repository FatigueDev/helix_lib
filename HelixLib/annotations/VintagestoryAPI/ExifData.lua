---@meta

---@class ExifData
---@field MakerNoteOriginalOffset number
---@field ByteOrder ExifByteOrder
---@field ImageType ImageType
---@field IfdShift number
ExifData = {}

---@param FileNameWithPath string
---@param Options? ExifLoadOptions
---@return ExifData
function ExifData.ctor(FileNameWithPath, Options) end
---@param ImageStream Stream
---@param Options? ExifLoadOptions
---@return ExifData
function ExifData.ctor(ImageStream, Options) end

---@return number
function ExifData.get_MakerNoteOriginalOffset() end

---@return ExifData
function ExifData.Empty() end

---@param DestFileNameWithPath? string
---@param SaveOptions? ExifSaveOptions
function ExifData.Save(DestFileNameWithPath, SaveOptions) end

---@param SourceStream Stream
---@param DestStream Stream
---@param SaveOptions? ExifSaveOptions
function ExifData.Save(SourceStream, DestStream, SaveOptions) end

---@param TagSpec ExifTag
---@param Value string
---@param Coding StrCoding
---@return boolean
function ExifData.GetTagValue(TagSpec, Value, Coding) end

---@param TagSpec ExifTag
---@param Value string
---@param Coding StrCoding
---@return boolean
function ExifData.SetTagValue(TagSpec, Value, Coding) end

---@param TagSpec ExifTag
---@param Value number
---@param Index? number
---@return boolean
function ExifData.GetTagValue(TagSpec, Value, Index) end

---@param TagSpec ExifTag
---@param Value number
---@param TagType ExifTagType
---@param Index? number
---@return boolean
function ExifData.SetTagValue(TagSpec, Value, TagType, Index) end

---@param TagSpec ExifTag
---@param Value number
---@param Index? number
---@return boolean
function ExifData.GetTagValue(TagSpec, Value, Index) end

---@param TagSpec ExifTag
---@param Value number
---@param TagType ExifTagType
---@param Index? number
---@return boolean
function ExifData.SetTagValue(TagSpec, Value, TagType, Index) end

---@param TagSpec ExifTag
---@param Value ExifRational&
---@param Index? number
---@return boolean
function ExifData.GetTagValue(TagSpec, Value, Index) end

---@param TagSpec ExifTag
---@param Value ExifRational
---@param TagType ExifTagType
---@param Index? number
---@return boolean
function ExifData.SetTagValue(TagSpec, Value, TagType, Index) end

---@param TagSpec ExifTag
---@param Value DateTime&
---@param Format? ExifDateFormat
---@return boolean
function ExifData.GetTagValue(TagSpec, Value, Format) end

---@param TagSpec ExifTag
---@param Value DateTime
---@param Format? ExifDateFormat
---@return boolean
function ExifData.SetTagValue(TagSpec, Value, Format) end

---@param TagSpec ExifTag
---@param TagType ExifTagType&
---@param ValueCount number
---@param RawData number
---@param RawDataIndex number
---@return boolean
function ExifData.GetTagRawData(TagSpec, TagType, ValueCount, RawData, RawDataIndex) end

---@param TagSpec ExifTag
---@param TagType ExifTagType&
---@param ValueCount number
---@param RawData number
---@return boolean
function ExifData.GetTagRawData(TagSpec, TagType, ValueCount, RawData) end

---@param TagSpec ExifTag
---@param TagType ExifTagType
---@param ValueCount number
---@param RawData number
---@param RawDataIndex? number
---@return boolean
function ExifData.SetTagRawData(TagSpec, TagType, ValueCount, RawData, RawDataIndex) end

---@param TagSpec ExifTag
---@param ValueCount number
---@return boolean
function ExifData.GetTagValueCount(TagSpec, ValueCount) end

---@param TagSpec ExifTag
---@param ValueCount number
---@return boolean
function ExifData.SetTagValueCount(TagSpec, ValueCount) end

---@param TagSpec ExifTag
---@param ValueCount number
---@param TagType ExifTagType
---@return boolean
function ExifData.SetTagValueCount(TagSpec, ValueCount, TagType) end

---@param TagSpec ExifTag
---@param TagType ExifTagType&
---@return boolean
function ExifData.GetTagType(TagSpec, TagType) end

---@param TagSpec ExifTag
---@return boolean
function ExifData.TagExists(TagSpec) end

---@param Ifd ExifIfd
---@return boolean
function ExifData.IfdExists(Ifd) end

---@param BlockType ImageFileBlock
---@return boolean
function ExifData.ImageFileBlockExists(BlockType) end

---@param TagSpec ExifTag
---@return boolean
function ExifData.RemoveTag(TagSpec) end

---@param Ifd ExifIfd
---@return boolean
function ExifData.RemoveAllTagsFromIfd(Ifd) end

function ExifData.RemoveAllTags() end

---@param BlockType ImageFileBlock
function ExifData.RemoveImageFileBlock(BlockType) end

---@param SourceExifData ExifData
function ExifData.ReplaceAllTagsBy(SourceExifData) end

---@return boolean
function ExifData.ThumbnailImageExists() end

---@param ThumbnailData number
---@param ThumbnailIndex number
---@param ThumbnailByteCount number
---@return boolean
function ExifData.GetThumbnailImage(ThumbnailData, ThumbnailIndex, ThumbnailByteCount) end

---@param ThumbnailData number
---@param ThumbnailIndex? number
---@param ThumbnailByteCount? number
---@return boolean
function ExifData.SetThumbnailImage(ThumbnailData, ThumbnailIndex, ThumbnailByteCount) end

---@param RemoveAlsoThumbnailTags boolean
function ExifData.RemoveThumbnailImage(RemoveAlsoThumbnailTags) end

---@return ExifByteOrder
function ExifData.get_ByteOrder() end

---@param TagSpec ExifTag
---@return ExifIfd
function ExifData.ExtractIfd(TagSpec) end

---@param TagSpec ExifTag
---@return ExifTagId
function ExifData.ExtractTagId(TagSpec) end

---@param Ifd ExifIfd
---@param TagId ExifTagId
---@return ExifTag
function ExifData.ComposeTagSpec(Ifd, TagId) end

---@param TagType ExifTagType
---@param ValueCount number
---@return number
function ExifData.GetTagByteCount(TagType, ValueCount) end

---@param Data number
---@param StartIndex number
---@return number
function ExifData.ExifReadUInt16(Data, StartIndex) end

---@param Data number
---@param StartIndex number
---@param Value number
function ExifData.ExifWriteUInt16(Data, StartIndex, Value) end

---@param Data number
---@param StartIndex number
---@return number
function ExifData.ExifReadUInt32(Data, StartIndex) end

---@param Data number
---@param StartIndex number
---@param Value number
function ExifData.ExifWriteUInt32(Data, StartIndex, Value) end

---@param Ifd ExifIfd
---@return boolean
function ExifData.InitTagEnumeration(Ifd) end

---@param TagSpec ExifTag&
---@return boolean
function ExifData.EnumerateNextTag(TagSpec) end

---@param Value DateTime&
---@return boolean
function ExifData.GetDateTaken(Value) end

---@param Value DateTime
---@return boolean
function ExifData.SetDateTaken(Value) end

function ExifData.RemoveDateTaken() end

---@param Value DateTime&
---@return boolean
function ExifData.GetDateDigitized(Value) end

---@param Value DateTime
---@return boolean
function ExifData.SetDateDigitized(Value) end

function ExifData.RemoveDateDigitized() end

---@param Value DateTime&
---@return boolean
function ExifData.GetDateChanged(Value) end

---@param Value DateTime
---@return boolean
function ExifData.SetDateChanged(Value) end

function ExifData.RemoveDateChanged() end

---@param Value GeoCoordinate&
---@return boolean
function ExifData.GetGpsLongitude(Value) end

---@param Value GeoCoordinate
---@return boolean
function ExifData.SetGpsLongitude(Value) end

function ExifData.RemoveGpsLongitude() end

---@param Value GeoCoordinate&
---@return boolean
function ExifData.GetGpsLatitude(Value) end

---@param Value GeoCoordinate
---@return boolean
function ExifData.SetGpsLatitude(Value) end

function ExifData.RemoveGpsLatitude() end

---@param Value number
---@return boolean
function ExifData.GetGpsAltitude(Value) end

---@param Value number
---@return boolean
function ExifData.SetGpsAltitude(Value) end

function ExifData.RemoveGpsAltitude() end

---@param Value DateTime&
---@return boolean
function ExifData.GetGpsDateTimeStamp(Value) end

---@param Value DateTime
---@return boolean
function ExifData.SetGpsDateTimeStamp(Value) end

function ExifData.RemoveGpsDateTimeStamp() end

---@return userdata
function ExifData.GetType() end

---@return string
function ExifData.ToString() end

---@param obj userdata
---@return boolean
function ExifData.Equals(obj) end

---@return number
function ExifData.GetHashCode() end


