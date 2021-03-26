if global.sleepAcc > 0
	global.sleepAcc -= 60;
else
	global.sleepAcc = 0
	
if global.freezeframetimer < 185
	global.freezeframetimer += 0.25
else
	global.freezeframetimer = 185
if global.freezeframetimer >= 5
	global.sleepScale = 1
else
	global.sleepScale = 0