---@meta

-- A class containing common values for elements before scaling is applied.
---@class GuiStyle
---@field ElementToDialogPadding number The padding between the element and the dialogue. 20f.
---@field HalfPadding number The padding between other things.  5f.
---@field DialogToScreenPadding number The padding between the dialogue and the screen. 10f.
---@field TitleBarHeight number The height of the title bar. 30.
---@field DialogBGRadius number The radius of the dialogue background. 1.
---@field ElementBGRadius number The radius of the element background. 1.
---@field LargeFontSize number The size of the large font. 40.
---@field NormalFontSize number The size of the normal fonts.  Used for text boxes. 30.
---@field SubNormalFontSize number The fonts that are slightly smaller than normal fonts. 24.
---@field SmallishFontSize number The smaller fonts. 20.
---@field SmallFontSize number The smallest font size used in the game that isn't used with itemstacks. 16.
---@field DetailFontSize number The font size used for specific details like Item Stack size info. 14.
---@field DecorativeFontName string The decorative font type. "Lora".
---@field StandardFontName string The standard font "Montserrat".
---@field LeftDialogMargin number Set by the client, loaded from the clientsettings.json. Used by ElementBounds to add a margin for left/right aligned dialogs
---@field RightDialogMargin number Set by the client, loaded from the clientsettings.json. Used by ElementBounds to add a margin for left/right aligned dialogs
---@field ColorTime1 number
---@field ColorTime2 number
---@field ColorRust1 number
---@field ColorRust2 number
---@field ColorRust3 number
---@field ColorWood number
---@field ColorParchment number
---@field ColorSchematic number
---@field ColorRot1 number
---@field ColorRot2 number
---@field ColorRot3 number
---@field ColorRot4 number
---@field ColorRot5 number
---@field DialogSlotBackColor number
---@field DialogSlotFrontColor number
---@field DialogLightBgColor number The light background color for dialogs.
---@field DialogDefaultBgColor number The default background color for dialogs.
---@field DialogStrongBgColor number The strong background color for dialogs.
---@field DialogBorderColor number The default dialog border color
---@field DialogHighlightColor number The Highlight color for dialogs.
---@field DialogAlternateBgColor number The alternate background color for dialogs.
---@field DialogDefaultTextColor number The default text color for any given dialog.
---@field DarkBrownColor number A color for a darker brown.
---@field HotbarNumberTextColor number The color of the 1..9 numbers on the hotbar slots
---@field DiscoveryTextColor number
---@field SuccessTextColor number
---@field SuccessTextColorHex string
---@field ErrorTextColorHex string
---@field ErrorTextColor number The color of the error text.
---@field WarningTextColor number The color of the error text.
---@field LinkTextColor number The color of the the link text.
---@field ButtonTextColor number A light brown text color.
---@field ActiveButtonTextColor number A hover color for the light brown text.
---@field DisabledTextColor number The text color for a disabled object.
---@field ActiveSlotColor number The color of the actively selected slot overlay
---@field HealthBarColor number The color of the health bar.
---@field OxygenBarColor number The color of the oxygen bar
---@field FoodBarColor number The color of the food bar.
---@field XPBarColor number The color of the XP bar.
---@field TitleBarColor number The color of the title bar.
---@field MacroIconColor number The color of the macro icon.
---@field DamageColorGradient number A 100 step gradient from green to red, to be used to show durability, damage or any state other of decay
GuiStyle = {}


---@return userdata
function GuiStyle.GetType() end

---@return string
function GuiStyle.ToString() end

---@param obj userdata
---@return boolean
function GuiStyle.Equals(obj) end

---@return number
function GuiStyle.GetHashCode() end


