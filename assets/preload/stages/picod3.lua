function onCreate()
	doTweenAlpha('hud', 'camHUD', 0, 0.1, 'linear')
	makeLuaText('Watermarc', "Porter the mod - Lightnight", 0, 2, 700); 
	setTextSize('Watermarc', 20);
	setObjectCamera('Watermarc', 'other');
	addLuaText('Watermarc', true);

	makeLuaSprite('parkingbg', 'picod3/parkingbg', -70, -300);
	scaleObject('parkingbg', 1, 1.0)
	addLuaSprite('parkingbg', false);

	makeAnimatedLuaSprite('LeftBoppers','picod3/LeftBoppers',15,250)
	addAnimationByIndices('LeftBoppers', 'idle', 'Boppers LEFT','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24)
	scaleObject('LeftBoppers', 0.9, 0.9)
	addLuaSprite('LeftBoppers', false);

	makeAnimatedLuaSprite('RightBoppers','picod3/RightBoppers', 960,180)
	addAnimationByIndices('RightBoppers', 'idle', 'Boppers RIGHT','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24)
	scaleObject('RightBoppers', 0.9, 0.9)
	addLuaSprite('RightBoppers', false);

	makeLuaSprite('tvscreen', 'picod3/tvscreen', 0, -30);
	scaleObject('tvscreen', 1, 1.1);
	setObjectCamera('tvscreen', 'HUD');
	setProperty('tvscreen.antialiasing', false);
	addLuaSprite('tvscreen', true);

	makeLuaSprite('out', 'picod3/out', 0, -30);
	scaleObject('out', 1, 1.1);
	setObjectCamera('out', 'other');
	addLuaSprite('out', true);
	setProperty('out.alpha', 0);

	--PreCache No eliminar
	precacheImage('picod3/tvscreen')
	precacheImage('picod3/scenes')
	precacheImage('picod3/corruptvignette3')
	precacheImage('picod3/out')
	precacheImage('picod3/parkingbg')
	precacheImage('VHS')

	if lowQuality then	
	removeLuaSprite('RightBoppers',true)
	removeLuaSprite('LeftBoppers',true)
	removeLuaSprite('tvscreen',true)
	removeLuaSprite('VHS',true)
	end
end
	function onBeatHit()
		if curBeat % 2== 0 then
	objectPlayAnimation('LeftBoppers', 'idle', false);	
	objectPlayAnimation('RightBoppers', 'idle', false);	
     end
	 function onUpdate()
		setTextString('botplayTxt', "PORTEADO POR PEREZ SEN");
	 end
end