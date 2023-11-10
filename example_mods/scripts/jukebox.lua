function onUpdate()

setProperty('border.x',getProperty('jukebox.x')-10)
  setProperty('border.y',getProperty('jukebox.y')-10)

setGraphicSize('border',getProperty('jukebox.width')+22,getProperty('jukebox.height')-40)

end

function onCreate()

  makeLuaSprite('border', '',10,10)
  makeGraphic('border',10,10,'1fedff')

  addLuaSprite('border',true);
  setProperty('border.alpha',0.45)
  setObjectCamera('border', 'other');
  makeLuaText('jukebox',getTextFromFile('data/'..songName..'/info.txt',false),0,-500,235)

  addLuaText('jukebox',true)

  setTextAlignment('jukebox', 'left')
  setTextSize('jukebox', 28)
  setObjectCamera('jukebox', 'other')
  setTextBorder('jukebox', 1.5, '000000')
  setTextFont('jukebox', 'ArialCE.ttf')

makeLuaText('jukeboxFake',getTextFromFile('data/'..songName..'/info.txt',false),0,10,235)

  setProperty('jukeboxFake.visible',false)

  addLuaText('jukeboxFake',true)

end

function onCountdownTick(counter)
  if counter == 0 then
     doTweenX('jtTx', 'jukebox', 10, 1, 'CircInOut')
     runTimer('jtTx',3)
  end
end

function onTimerCompleted(tag)
  if tag == 'jtTx' then
     doTweenX('jtTx2', 'jukebox', -500, 1, 'CircInOut')
  end
end
