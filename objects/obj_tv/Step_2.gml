if combolast != global.combo
{
	combolast = global.combo
	global.combobuffer = 60
}	
	
if global.combobuffer > 0
	global.combobuffer = (global.combobuffer - 0.5)
	
if global.combobuffer <= 0
	global.hit = 0;