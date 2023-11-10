function onCreate()
setProperty("camGame.visible", false)
setProperty("camHUD.visible", false)
end

function onBeatHit()
if curBeat == 16 then
setProperty("camGame.visible", true)
setProperty("camHUD.visible", true)
setProperty("defaultCamZoom", 1)
end

if curBeat == 80 then
setProperty("defaultCamZoom", 0.7)
end

if curBeat == 176 then
setProperty("defaultCamZoom", 1)
end

if curBeat == 240 then
setProperty("defaultCamZoom", 0.7)
end

if curBeat == 276 then
setProperty("defaultCamZoom", 1)
end

if curBeat == 340 then
setProperty("defaultCamZoom", 0.7)
end

if curBeat == 400 then
setProperty("camGame.visible", false)
end

if curBeat == 404 then
setProperty("camGame.visible", true)
setProperty("defaultCamZoom", 1)
end

if curBeat == 468 then
setProperty("defaultCamZoom", 1.2)
end

if curBeat == 532 then
setProperty("defaultCamZoom", 2)
end

if curBeat == 534 then
setProperty("camGame.visible", false)
setProperty("camHUD.visible", false)
end

end