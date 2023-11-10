function onCreate()
setProperty("camGame.visible", false)
setProperty("camHUD.visible", false)
end

function onBeatHit()
if curBeat == 8 then
setProperty("camGame.visible", true)
setProperty("camHUD.visible", true)
setProperty("defaultCamZoom", 1)
end

if curBeat == 72 then
setProperty("defaultCamZoom", 0.7)
end

if curBeat == 100 then
setProperty("defaultCamZoom", 2)
end

if curBeat == 104 then
setProperty("defaultCamZoom", 0.7)
end

if curBeat == 168 then
setProperty("defaultCamZoom", 1)
end

if curBeat == 232 then
setProperty("defaultCamZoom", 0.7)
end

if curBeat == 268 then
setProperty("defaultCamZoom", 1)
end

if curBeat == 332 then
setProperty("defaultCamZoom", 0.7)
end

if curBeat == 392 then
setProperty("camGame.visible", false)
end

if curBeat == 396 then
setProperty("camGame.visible", true)
setProperty("defaultCamZoom", 1)
end

if curBeat == 460 then
setProperty("camGame.visible", false)
end

end