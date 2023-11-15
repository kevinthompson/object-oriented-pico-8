pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- heartseeker
-- by kevin

--[[
this cart was created as a
way to demonstrate how i write 
object oriented code in pico-8
--]]

-- config
time_limit=30
heart_count=50

-- globals
score=0
timer=0

-- game loop
function _init()
	scene:load(title_scene)
end

function _update()
	scene.current:update()
end

function _draw()
	-- background
	cls(1)
	rect(4,12,123,123,13)

	-- scene
	scene.current:draw()

	-- ui
	prints("score: "..pad(score.."00",7),4,4,7)
	prints("time: "..pad(ceil(timer/30),2),93,4,7)
end

-->8
-- utilities
global=_ENV
noop=function()end

-- palette
poke(0x5f2e,1)
pal(0,129,1)

-- font
poke4(0x5600,unpack(split"0x9.0908,0x.0100,0x1100,0x4620.2100,0x4110.1674,0x7774.7711,0,0x111.7700,0x.0001,0x14.0740,0x1700.0700,0x715.1000,0x.0004,0x110.0010,0x1101.0010,0x105.0011,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x3f3f.3f3f,0x3f3f.3f3f,0x3f3f.3f00,0x3f.3f3f,0x333f.3f00,0x3f.3f33,0xc33.3300,0x33.330c,0x33.3300,0x33.3300,0x3333.3300,0x33.3333,0xfffc.f0c0,0xc0f0.fcff,0xff3f.0f03,0x30f.3fff,0x303.0f0f,0,0,0x7878.6060,0x3c7e.e7c3,0x187e.187e,0xc00,0x.000c,0,0x607.0303,0,0xf0f.0f0f,0x1b1b.1b1b,0,0x1f1b.1f0e,0x.000e,0,0,0x1e3f.3f3f,0xc0c.001e,0x1b1b.1b1b,0,0x66ff.ff66,0x66ff.ff66,0x3f13.7f7e,0x3f7f.647e,0x3873.e7c6,0x63e7.ce1c,0x3f33.3f1e,0x3e7f.e3fe,0x307.0606,0,0x60e.3c38,0x383c.0e06,0x3038.1e0e,0xe1e.3830,0xe1f.1b00,0x.1b1f,0x3f0c.0c00,0xc.0c3f,0,0x307.0606,0x3f00,0x.003f,0,0x303,0x60e.0c0c,0x303.0706,0x6b63.7f3e,0x3e7f.636b,0x181f.1f18,0x7f7f.1818,0x7e60.7f3f,0x7f7f.033f,0x7c60.7f3f,0x3f7f.603c,0x676e.7c78,0x6060.7f7f,0x3f03.7f7f,0x3f7f.607f,0x3f03.7f7e,0x3e7f.637f,0x3870.7f7f,0x307.0e1c,0x3e63.7f3e,0x3e7f.637f,0x7f63.7f3e,0x3f7f.607e,0x.0303,0x303,0x.0606,0x307.0606,0x1f7c.f0c0,0xc0f0.7c1f,0xff.ff00,0xff.ff00,0xf83e.0f03,0x30f.3ef8,0x7c60.7f3f,0xc0c.003c,0xfbdb.ff7e,0xfeff.03fb,0x7e60.7e3e,0x7e7f.637f,0x3f03.0303,0x3f7f.637f,0x637f.3e00,0x3e7f.6303,0x7e60.6060,0x7e7f.637f,0x7f63.7f3e,0x7e7f.037f,0x1f66.7e3c,0x606.061f,0x3f33.7f7e,0x1f3f.381e,0x3f03.0303,0x6363.637f,0x300.0303,0x607.0303,0x3000.3030,0x1e3f.3330,0x3b33.0303,0x333b.1f1f,0x303.0303,0x607.0303,0xffff.6600,0xc3c3.c3db,0x7f3f.0300,0x6363.6363,0x637f.3e00,0x3e7f.6363,0x637f.3f00,0x303.3f7f,0x637f.7e00,0x6060.7e7f,0x3f1f.0300,0x303.0333,0x77f.7e00,0x3f7f.703e,0x3f3f.0606,0x3c3e.0606,0x6363.6300,0x3e7f.6363,0x3f33.3300,0xc0c.1e1e,0xc3c3.c300,0x66ff.ffdb,0x3e77.6300,0x6377.3e1c,0x7f63.6300,0x3f7f.607e,0x387f.7f00,0x7f7f.0e1c,0x606.3e3e,0x3e3e.0606,0x607.0303,0xc0c.0e06,0x3030.3e3e,0x3e3e.3030,0x333f.1e0c,0,0,0xffff,0x607.0303,0,0x7f63.7f3e,0x6363.637f,0x3f63.7f3f,0x3f7f.637f,0x363.7f3e,0x3e7f.6303,0x6363.7f3f,0x3f7f.6363,0x3f03.7f7f,0x7f7f.033f,0x3f03.7f7f,0x303.033f,0x7b03.7f7e,0x3e7f.637b,0x7f63.6363,0x6363.637f,0x1818.ffff,0xffff.1818,0x3030.7e7e,0x1e3f.3330,0x1f3b.7363,0x6373.3b1f,0x303.0303,0x7f7f.0303,0xffff.6666,0xc3c3.dbdb,0xdfcf.c7c3,0xc3e3.f3fb,0x6363.7f3e,0x3e7f.6363,0x6363.7f3f,0x303.3f7f,0x6363.7f3e,0xfeff.7363,0x6363.7f3f,0x6373.3f7f,0x3f03.7f7e,0x3f7f.607e,0x1818.ffff,0x1818.1818,0x6363.6363,0x3e7f.6363,0x66e7.c3c3,0x183c.3c7e,0xdbdb.c3c3,0x6666.ffff,0x3c7e.e7c3,0xc3e7.7e3c,0x7ee7.c3c3,0x1818.183c,0x3870.7f7f,0x7f7f.0e1c,0xe0c.3c38,0x383c.0c0e,0x606.0606,0x606.0606,0x3818.1e0e,0xe1e.1838,0x73fb.dfce,0,0x1f1b.1f1f,0x.001f,0xffff.ffff,0xffff.ffff,0xcccc.3333,0xcccc.3333,0x99ff.ffc3,0x7ec3.e7ff,0xc3c3.ff7e,0x7eff.e7e7,0x3030.0303,0x3030.0303,0xfcfc.0c0c,0x3030.3f3f,0x4f4f.3e00,0x3e7f.7f7f,0x7f7f.3600,0x81c.3e7f,0xe7ff.ff7e,0x7eff.ffe7,0x7f1c.1c00,0x363e.1c7f,0xff7e.3c18,0x6666.7eff,0xc3cf.ff7e,0x7eff.cfc3,0x9999.ff7e,0x7ec3.81ff,0x1818.7838,0xe1f.1f1e,0x99c3.ff7e,0x7eff.c399,0x3f1e.0c00,0xc.1e3f,0x3300,0x.0033,0xc3f3.ff7e,0x7eff.f3c3,0x7f1c.0800,0x6377.3e7f,0x1e3f.3f00,0x3f3f.1e0c,0xe7e7.ff7e,0x7eff.c3c3,0x40e.1f1b,0x2070.f8d8,0xeec7.8301,0x10.387c,0xe799.997e,0x7e99.99e7,0x.ffff,0x.ffff,0x3333.3333,0x3333.3333,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x99ff.8100,0x7ec3.81ff,0xbdff.8100,0x7ec3.bdff,0x99ff.8100,0x7ec3.e7ff,0x9999.ff81,0x7ec3.81ff,0x99bd.ff81,0x7ec3.81ff,0x497f.4100,0x3e63.417f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x99ff.7e00,0x7ec3.81ff,0x99ff.7e00,0x7ec3.bdff,0x99ff.7e00,0x7eff.81ff,0x99bd.ff7e,0x7ec3.81ff,0x99db.ff7e,0x7ec3.81ff,0x497f.3e00,0x3e63.417f,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x4058.1840,0x545c.5d7e,0x4018.5800,0x141c.5d7e,0x4058.5840,0x145c.5dfe,0x4058.5800,0x141c.5dfe,0x7777.3e00,0x3e77.6341,0x6377.3e00,0x3e77.7741,0x6777.3e00,0x3e77.6741,0x7377.3e00,0x3e77.7341,0x6b5d.3e00,0x3e5d.6b77,0x7f7f.3e00,0x3e7f.7f77,0x637f.3e00,0x3e7f.6349,0xffff,0xffff,0xcccc.cccc,0xcccc.cccc,0,0,0,0,0,0,0x6f3e.1c00,0x1c3e.7f7f"))

-- print title
function print_title(str,y,clr)
	poke(0x5f58,0x81)
	local x=64-(#str*8)/2
	print(str,x,y+2,13)
	print(str,x,y,clr)
	poke(0x5f58,0x01)
end

-- print centered
function printc(str,y,clr)
	local x=64-(#str*4)/2
	print(str,x,y,clr)
end

-- print shadow
function prints(str,x,y,clr)
	print(str,x+1,y+1,0)
	print(str,x,y,clr)
end

-- left pad
function pad(str,len,char)
	str=tostr(str)
	char=char or "0"
	if (#str==len) return str
	return char..pad(str, len-1)
end

-->8
-- class

class=setmetatable({
	extend=function(self,tbl)
		tbl=tbl or {}
		tbl.__index=tbl
		return setmetatable(tbl,{
			__index=self,
			__call=function(self,...)
				return self:new(...)
			end
		})
	end,

	new=function(self,tbl)
		tbl=setmetatable(tbl or {},self)
		tbl:init()
		return tbl
	end,

	init=noop,
},{ __index=_ENV })
-->8
-- scenes

scene=class:extend({
	current=nil,

	update=noop,
	draw=noop,

	destroy=function(_ENV)
		entity:each("destroy")
	end,

	load=function(_ENV,scn)
		if current != scn then
			if (current) current:destroy()
			current=scn()
		end
	end
})

title_scene=scene:extend({
	init=function(_ENV)
		frame=0
		title_heart=heart({
			x=15,
			y=30
		})
	end,

	update=function(_ENV)
		entity:each("update")
	
		if btnp(❎) then
			scene:load(game_scene)
		end
		
		-- spawn spark each 4/10 sec
		if (t()*10)\1%4==0 then
			title_heart:create_spark()
		end
	end,

	draw=function()
		-- draw entities
		entity:each("draw")
		
		-- title
		print_title("heartseeker",32,7)
		
		-- instructions
		printc("collect all the hearts",60,6)
		printc("before time runs out!",68,6)
		
		-- prompt
		printc("❎ start game",96,7)
	end,
})

game_scene=scene:extend({
	init=function(_ENV)
		global.score=0
		global.timer=time_limit*30

		-- spawn player
		player=person()

		-- spawn hearts
		while #heart.pool<heart_count do
			local obj=heart({
				x=8+rnd(107),
				y=16+rnd(99)
			})
			
			-- destroy if colliding
			obj:detect(player,function()
				obj:destroy()
			end)
		end
	end,

	update=function(_ENV)
		entity:each("update")

		-- detect heart pickup
		heart:each("detect",player,function(obj)
			sfx(0)
			obj:destroy()
			global.score+=1

			for i=1,3 do
				obj:create_spark()
			end
		end)

		-- check win state
		if #heart.pool==0 then
			scene:load(win_scene)
		end

		-- check game over state
		if timer==0 then
			scene:load(lose_scene)
		end

		global.timer=max(0,timer-1)
	end,

	draw=function(_ENV)
		add(entity.pool,del(entity.pool,player))
		entity:each("draw")
	end,
})

win_scene=scene:extend({
	init=function(_ENV)
		sfx(1)
	end,

	update=function(_ENV)
		if btnp(❎) then
			scene:load(game_scene)
		end
	end,

	draw=function(_ENV)
		print_title("you win!",32,7)
		printc("❎ play again",96,7)
	end
})

lose_scene=scene:extend({
	init=function(_ENV)
		sfx(2)
	end,
	
	update=function(_ENV)
		if btnp(❎) then
			scene:load(game_scene)
		end
	end,

	draw=function(_ENV)
		print_title("times up!",32,7)
		printc("❎ play again",96,7)
	end
})
-->8
-- entities

entity=class:extend({
	-- class
	pool={},
	
	extend=function(_ENV,tbl)
		tbl=class.extend(_ENV,tbl)
		return tbl
	end,

	each=function(_ENV,method,...)
		for e in all(pool) do
			if (e[method]) e[method](e,...)
		end
	end,
	
	-- instance
	x=0,
	y=0,

	w=8,
	h=8,

	init=function(_ENV)
		add(entity.pool,_ENV)
		if pool != entity.pool then
			add(pool,_ENV)
		end
	end,

	detect=function(_ENV,other,callback)
		if collide(_ENV,other) then
			callback(_ENV)
		end
	end,

	collide=function(_ENV,other)
		return x<other.x+other.w and
			x+w>other.x and
			y<other.y+other.h and
			h+y>other.y
	end,

	destroy=function(_ENV)
		del(entity.pool,_ENV)
		if pool != entity.pool then
			del(pool,_ENV)
		end
	end
})

-- person
person=entity:extend({
	x=60,
	y=60,
	w=7,
	h=5,

	dx=0,
	dy=0,

	update=function(_ENV)
		dx,dy=0,0

		if (btn(⬆️)) dy-=1
		if (btn(⬇️)) dy+=1
		if (btn(⬅️)) dx-=1
		if (btn(➡️)) dx+=1

		if dx!=0 or dy !=0 then
			-- normalize movement
			local a=atan2(dx,dy)
			x+=cos(a)
			y+=sin(a)

			-- spawn dust each 3/10 sec
			if (t()*10)\1%3==0 then
				dust({
					x=x+rnd(3),
					y=y+4,
					frames=18+rnd(4),
				})
			end
		end
		
		-- restrict movement
		x=mid(7,x,114)
		y=mid(15,y,116)
	end,

	draw=function(_ENV)
		prints("😐",x,y,7)
	end,
})

-- heart
heart=entity:extend({
	w=5,
	h=5,
	pool={},

	draw=function(_ENV)
		print("♥",x,y,8)
	end,

	create_spark=function(_ENV)
		spark({
			x=x-2+rnd(9),
			y=y-2+rnd(4),
			frames=4+rnd(4),
		})
	end
})

-- particle
particle=entity:extend({
	frame=0,
	frames=10,
	rad=1,
	clr=5,
	sx=0,
	sy=0,
	
	update=function(_ENV)
		x+=sx
		y+=sy
		frame+=1
		
		if frame>=frames then
			destroy(_ENV)
		end
	end,

	draw=function(_ENV)
		local r=(1-frame/frames)*rad
		circfill(x,y,r,clr)
	end
})

dust=particle:extend({
	rad=3,
	sy=-.25
})

spark=particle:extend({
	clr=10,
	sy=-.5,
})
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
010300001e020210202d02732027380272c0273800027000270000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010700001205012050120501605016050180501c05020050270542a0502a0502a0502a00300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007000032050320502f0502905026050200501805014050120500905009050090500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
