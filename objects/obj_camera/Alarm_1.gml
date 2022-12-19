/*if (timestop == 0)
{
//added this bc it would loop around if not. wtf!!!!
if global.seconds >= 0
{
	global.seconds -= 1
}
//this is just normal stuff
if (global.seconds < 0)
    {
        global.seconds = 59
        global.minutes -= 1
    }
}*/
if (global.panic == 1)
{
    global.seconds -= 1
    if (global.collect >= 5)
        global.collect -= 5
    if (global.seconds < 0)
    {
        global.seconds = 59
        global.minutes -= 1
    }
}
alarm[1] = 60
