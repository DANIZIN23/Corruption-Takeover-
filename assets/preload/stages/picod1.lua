local xx = 450;
local yy = 360;
local xx2 = 700;
local yy2 = 340;
local ofs = 21;
local followchars = true;
local del = 3;
local del2 = 3;
function onCreate()
	makeLuaText('Watermarc', "Porter the mod - Lightnight ", 0, 2, 700); 
	setTextSize('Watermarc', 20);
	setObjectCamera('Watermarc', 'other');
	addLuaText('Watermarc', true);

	makeLuaSprite('parkingbg', 'picod1/BG', -650, -350);
	scaleObject('parkingbg', 0.7, 0.7)
	addLuaSprite('parkingbg', false);
	precacheImage('parkingbg')

	if not lowQuality then
	makeAnimatedLuaSprite('limo','picod1/limo', -700, -395)
	addAnimationByIndices('limo', 'dance', 'Limo Bop','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29',24)
	scaleObject('limo', 1.3, 1.3)
	addLuaSprite('limo', false);

	makeAnimatedLuaSprite('limo2','picod1/limo2', -700, -395)
	addAnimationByIndices('limo2', 'dance', 'Limo Bop','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29',24)
	scaleObject('limo2', 1.3, 1.3)
	addLuaSprite('limo2', true)

	makeAnimatedLuaSprite('survivors','picod1/survivors',-400,200)
	addAnimationByIndices('survivors', 'dance', 'Survivors Idle','0,1,2,3,4,5,6,7,8,9,10,11,12,13',24)
	scaleObject('survivors', 0.7, 0.7)
	addLuaSprite('survivors', false);

	makeAnimatedLuaSprite('fogthing','picod1/fogthing',-1300,-480)
	addAnimationByPrefix('fogthing','idle','fog instancia 100',24,true)
	setObjectCamera('fogthing', 'HUD');
	setProperty('fogthing.alpha', 0.16);
	scaleObject('fogthing',2,2)
	addLuaSprite('fogthing',true)


	end

	if not lowQuality then
	makeLuaSprite('tvscreen', 'picod3/tvscreen', 0, -30);
	scaleObject('tvscreen', 1, 1.1);
	setObjectCamera('tvscreen', 'HUD');
	setProperty('tvscreen.antialiasing', false);
	addLuaSprite('tvscreen', true);

	makeLuaSprite('shaderevil', 'picod1/shaderevil', 0, -30);
	scaleObject('shaderevil', 1, 1.1);
	setObjectCamera('shaderevil', 'other');
	setProperty('shaderevil.antialiasing', false);
	setProperty('shaderevil.alpha', 0.23);
	addLuaSprite('shaderevil', true);
	end


	--PreCache No eliminar
	precacheImage('picod1/tvscreen')
	precacheImage('picod1/scenes')
	precacheImage('picod1/corruptvignette3')
	precacheImage('picod1/out')

	if lowQuality then	
		removeLuaSprite('shaderevil',true)
		removeLuaSprite('tvscreen',true)
		removeLuaSprite('limo',true)
		removeLuaSprite('limo2',true)
		removeLuaSprite('SkidNeneStand',true)
	  end
	end
	function onCreatePost()
		setProperty('gf.visible',false)
		end
	function onBeatHit()
		if curBeat % 1== 0 then
	objectPlayAnimation('survivors', 'dance', true);	
	objectPlayAnimation('limo', 'dance', true);	
	objectPlayAnimation('limo2', 'dance', true);	

     end
	 function onUpdate()
		setTextString('botplayTxt', "PORTEADO POR PEREZ SEN");
	 end

function onUpdate()
	if del > 0 then
		del = del - 0
	end
	if del2 > 0 then
		del2 = del2 - 0
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
	end
	end
 end
 