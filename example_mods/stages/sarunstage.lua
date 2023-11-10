function onCreate()

	makeLuaSprite('obj35', 'SARUNBG', -530, -372)
	scaleObject('obj35', 2.4, 2.4)
	setProperty('obj35.antialiasing', false);
	addLuaSprite('obj35', false)
        
    makeAnimatedLuaSprite('tincan', 'BGcharacters', -500, 750);
	setProperty('tincan.antialiasing', false);
	addAnimationByPrefix('tincan', '1000', '1000', 24, true);
	scaleObject('tincan', 3, 3);
	setScrollFactor('tincan', 1, 1);
	addLuaSprite('tincan', true)
	
	makeAnimatedLuaSprite('daboi', 'BGcharacters', -150, 400);
	setProperty('daboi.antialiasing', false);
	addAnimationByPrefix('daboi', '6000', '6000', 24, true);
	scaleObject('daboi', 3, 3);
	setScrollFactor('daboi', 1, 1);
	addLuaSprite('daboi', false)
	
	makeAnimatedLuaSprite('daboi', 'BGcharacters', -150, 400);
	setProperty('daboi.antialiasing', false);
	addAnimationByPrefix('daboi', '6000', '6000', 24, true);
	scaleObject('daboi', 3, 3);
	setScrollFactor('daboi', 1, 1);
	addLuaSprite('daboi', false)
	
	makeAnimatedLuaSprite('coral', 'BGcharacters', -250, 500);
	setProperty('coral.antialiasing', false);
	addAnimationByPrefix('coral', '8000', '8000', 24, true);
	scaleObject('coral', 3, 3);
	setScrollFactor('coral', 1, 1);
	addLuaSprite('coral', false)
	
	makeAnimatedLuaSprite('gray', 'BGcharacters', -200, 650);
	setProperty('gray.antialiasing', false);
	addAnimationByPrefix('gray', '2000', '2000', 24, true);
	scaleObject('gray', 3, 3);
	setScrollFactor('gray', 1, 1);
	addLuaSprite('gray', true)
	
	makeAnimatedLuaSprite('jake', 'BGcharacters', 700, 400);
	setProperty('jake.antialiasing', false);
	addAnimationByPrefix('jake', '5000', '5000', 24, true);
	scaleObject('jake', 3, 3);
	setScrollFactor('jake', 1, 1);
	addLuaSprite('jake', false)
	
	makeAnimatedLuaSprite('black', 'BGcharacters', 1000, 150);
	setProperty('black.antialiasing', false);
	addAnimationByPrefix('black', '9000', '9000', 24, true);
	scaleObject('black', 3, 3);
	setScrollFactor('black', 1, 1);
	addLuaSprite('black', false)
	
	makeAnimatedLuaSprite('whiteguy', 'BGcharacters', 1300, 600);
	setProperty('whiteguy.antialiasing', false);
	addAnimationByPrefix('whiteguy', '4000', '4000', 24, true);
	scaleObject('whiteguy', 3, 3);
	setScrollFactor('whiteguy', 1, 1);
	addLuaSprite('whiteguy', true)
	
	makeAnimatedLuaSprite('brownie', 'BGcharacters', -3500, 600);
	setProperty('brownie.antialiasing', false);
	addAnimationByPrefix('brownie', '7000', '7000', 24, true);
	scaleObject('brownie', 3, 3);
	setScrollFactor('brownie', 1, 1);
	addLuaSprite('brownie', true)
	
	makeAnimatedLuaSprite('red', 'BGcharacters', -3000, 650);
	setProperty('red.antialiasing', false);
	addAnimationByPrefix('red', '3000', '3000', 24, true);
	scaleObject('red', 3.5, 3.5);
	setScrollFactor('red', 1, 1);
	addLuaSprite('red', true)
	
	doTweenX('redx', 'red', 3000, 30);
	doTweenX('browniex', 'brownie', 2500, 30);

	if songName == 'Spookpostor' then
	
	makeLuaSprite('obj35', 'SARUNBGSPOOK', -530, -372)
	scaleObject('obj35', 2.4, 2.4)
	setProperty('obj35.antialiasing', false);
	addLuaSprite('obj35', false)

	makeLuaSprite('overlay', 'overlay', 0, 0);
	scaleObject('overlay', 2, 2);
	addLuaSprite('overlay', true)
	setObjectCamera('overlay', 'hud')
	
	makeAnimatedLuaSprite('vfg', 'BGcharacters', -500, 555);
	setProperty('vfg.antialiasing', false);
	addAnimationByPrefix('vfg', 'VFG', 'VFG', 24, true);
	scaleObject('vfg', 2, 2);
	setScrollFactor('vfg', 1, 1);
	addLuaSprite('vfg', true)
	
	setProperty('tincan.visible', false)
	setProperty('daboi.visible', false)
	setProperty('coral.visible', false)
	setProperty('gray.visible', false)
	setProperty('jake.visible', false)
	setProperty('black.visible', false)
	setProperty('whiteguy.visible', false)
	setProperty('brownie.visible', false)
	setProperty('red.visible', false)
	
	end
	
	if songName == 'Spookpostor-2' then
	
	makeLuaSprite('obj35', 'SARUNBGSPOOK', -530, -372)
	scaleObject('obj35', 2.4, 2.4)
	setProperty('obj35.antialiasing', false);
	addLuaSprite('obj35', false)
	
		
	makeAnimatedLuaSprite('vfg', 'BGcharacters', -500, 555);
	setProperty('vfg.antialiasing', false);
	addAnimationByPrefix('vfg', 'VFG', 'VFG', 24, true);
	scaleObject('vfg', 2, 2);
	setScrollFactor('vfg', 1, 1);
	addLuaSprite('vfg', true)

	makeLuaSprite('overlay', 'overlay', 0, 0);
	scaleObject('overlay', 2, 2);
	addLuaSprite('overlay', true)
	setObjectCamera('overlay', 'hud')
		
	setProperty('tincan.visible', false)
	setProperty('daboi.visible', false)
	setProperty('coral.visible', false)
	setProperty('gray.visible', false)
	setProperty('jake.visible', false)
	setProperty('black.visible', false)
	setProperty('whiteguy.visible', false)
	setProperty('brownie.visible', false)
	setProperty('red.visible', false)
	
	end

end

function onTweenCompleted(tag)

   if tag == 'redx' then
   setProperty('red.x', -3000)
   doTweenX('redx', 'red', 3000, 30);
   end
   
   if tag == 'browniex' then
   setProperty('brownie.x', -3500)
   doTweenX('browniex', 'brownie', 2500, 30);
   end
end

function onUpdate()

setProperty('gf.visible', false)
setProperty('pet.visible', false)

end