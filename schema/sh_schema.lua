SCHEMA.name = "Flashpoint - 1962"
SCHEMA.introName = ""
SCHEMA.desc = " "
SCHEMA.author = "Smiley"
SCHEMA.uniqueID = "1962F" -- Schema will be a unique identifier stored in the database.

nut.currency.set("RM", "Reichmark", "Reichmarks")

nut.util.include("cl_effects.lua")
nut.util.include("sh_commands.lua")
--nut.util.include("sv_resource.lua")
--nut.util.include("sh_dev.lua") -- Developer Functions

nut.util.includeDir("libs")
--nut.util.includeDir("meta")
nut.util.includeDir("hooks")
nut.util.includeDir("derma")

--[[nut.flag.add("F", "Access to food/drink items.")
nut.flag.add("A", "Access to armor/clothing items.")
nut.flag.add("G", "Access to general items.")
nut.flag.add("S", "Access to special/classified items.")

nut.flag.add("1", "Access to melee weaponry.")
nut.flag.add("2", "Access to small weaponry.")
nut.flag.add("3", "Access to large weaponry.")
nut.flag.add("4", "Access to special weaponry.")--]]

nut.flag.add("j", "Access to the junk items.")
nut.flag.add("v", "Access to the general items.")
nut.flag.add("V", "Access to the more rare items.")
nut.flag.add("E", "Effects.")
nut.flag.add("T", "Access to more dangerous tools.")
nut.flag.add("q", "Ability to scrap junk objects.")
nut.flag.add("1", "Customize item names and descriptions.")
nut.flag.add("u", "Ban from OOC.")

--This is used for some entities to print stuff in the chat to people.
nut.chat.register("mind", {
	onChatAdd = function(speaker, text)
		chat.AddText(Color(115, 115, 115), "**\""..text.."\"")
	end,
	onCanHear = 1, --range is set incredibly low so that only the client can see it.
	prefix = {"/mind"},
	font = "nutChatFontItalics",
	filter = "actions",
	deadCanChat = true
})