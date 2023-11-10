-- Combo script from somewhere in the vanilla ui Script, by: Bombastic_Tom

------ Config ------
local timeBar = true -- Make the V4 timebar always appear or never
--------------------


---- DON'T CHANGE ANYTHING BELOW THIS POINT!!! ----
----- (Unless you know what you're doing lol) -----
local start = false

function onCreatePost()
	if timeBar == false then
		close()
	end
	setProperty("timeBarBG.visible", false)
	setProperty("timeBar.visible", false)
	setProperty("timeTxt.visible", false)
	
	makeLuaText("v4TimeTxt", string.upper(songName), 400, 42 + (screenWidth / 2) - 585, 20)
	setTextFont("v4TimeTxt", "pixel.otf")
	setObjectCamera("v4TimeTxt", "hud")
	setTextSize("v4TimeTxt", 9)
	setTextColor("v4TimeTxt", "FFFFFF")
	setTextAlignment("v4TimeTxt", "left")
	setTextBorder("v4TimeTxt", 1, "000000")
	if (downscroll == true) then
		setProperty("v4TimeTxt.y", screenHeight - 45)
	end
	setProperty("v4TimeTxt.alpha", 0)
	
	makeLuaSprite("v4TimeBarBG", "timeBar", getProperty("v4TimeTxt.x"), getProperty("v4TimeTxt.y") + (getProperty("v4TimeTxt.height") / 4))
	setObjectCamera("v4TimeBarBG", "hud")
	setProperty("v4TimeBarBG.alpha", 0)
	addLuaSprite("v4TimeBarBG")
	
	makeLuaSprite("v4TimeBar", "", -getProperty('v4TimeBarBG.x') + 2, getProperty('v4TimeBarBG.y') + 4)
	makeGraphic("v4TimeBar", (getProperty('v4TimeBarBG.width') - 7) / 2, getProperty('v4TimeBarBG.height') - 8, "00f7ff")
	setObjectCamera("v4TimeBar", "hud")
	setProperty("v4TimeBar.visible", false)
	setProperty("v4TimeBar.alpha", 0)
	addLuaSprite("v4TimeBar")
	setProperty("v4TimeBar.origin.x", getProperty("v4TimeBar.width"))
	
	setProperty("v4TimeTxt.x", getProperty("v4TimeTxt.x")+10)
	setProperty("v4TimeTxt.y", getProperty("v4TimeTxt.y")+5)
	addLuaText("v4TimeTxt")
end

function onSongStart()
	start = true
	doTweenAlpha(1, "v4TimeBarBG", 1, 0.5, "circOut")
	doTweenAlpha(2, "v4TimeBar", 1, 0.5, "circOut")
	doTweenAlpha(3, "v4TimeTxt", 1, 0.5, "circOut")
end

function onUpdate(elapsed)
	if start == true then
		setProperty("v4TimeBar.visible", true)
		local percent = -(getSongPosition()/songLength)
		local scale = (percent * 2)
		setProperty("v4TimeBar.scale.x", scale)
	end
end