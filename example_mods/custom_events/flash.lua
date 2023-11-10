local flashCreated = false
local currentLayer = 'hud'
function onCreate()
	createFlash(0.001,'hud',false)
end
function createFlash(alpha,layer,front)
	makeLuaSprite('flashEvent',nil,0,0)
	setFlashLayer(layer)
	makeGraphic('flashEvent',screenWidth,screenHeight,'FFFFFF')
	setProperty('flashEvent.alpha',alpha)
	addLuaSprite('flashEvent',front)
	flashCreated = true
end
function onEvent(name,v1,v2)
	if name == 'flash' then
		local speed = 0.4
		local color = 'FFFFFF'
		local layer = 'hud'
		if v1 ~= '' and string.len(v1) >= 6 then
			color = v1
		end
		if v2 ~= '' then
			local commaStartV2 = 0
			local commaEndV2 = 0
			commaStartV2,commaEndV2 = string.find(v2,',',0,true)
			if commaStartV2 ~= nil then
				speed = tonumber(string.sub(v2,0,commaStartV2 - 1))
				layer = string.sub(v2,commaEndV2 + 1)
			else
				speed = tonumber(v2)
			end
		end
		if layer ~= '' then
			currentLayer = layer
		end
		if flashCreated == true then
			setFlashLayer(currentLayer)
			setProperty('flashEvent.alpha',1)
		else
			createFlash(1,currentLayer,true)
		end
		doTweenAlpha('flashEventBye','flashEvent',0,speed,'linear')
		setProperty('flashEvent.color',getColorFromHex(color))
	end
end
function setFlashLayer(layer)
    if layer == nil then
        layer = 'hud'
    end
    if layer == 'game' then
        setObjectCamera('flashEvent','hud')
        setObjectOrder('flashEvent',1)
    else
        setObjectCamera('flashEvent',layer)
    end
end
function onTweenCompleted(tag)
	if tag == 'flashEventBye' then
		currentLayer = 'hud'
		flashCreated = false
		removeLuaSprite('flashEvent',true)
	end
end