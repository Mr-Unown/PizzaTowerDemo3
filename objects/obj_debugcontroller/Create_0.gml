depth = -9999

active = false
input = ""
keyboard_string = ""
inputbuffer = 2
inputmax = 2
deletebuffer = 6
deletemax = 6
arrayi = 0
//This is for listing commands and functions, all the adding is done with end step.
//Items in brackets are required
//Items in parentheses are optional
commands[arrayi++] = "help (page)"
commands[arrayi++] = "newhud (true/false)"
commands[arrayi++] = "heatmeter (true/false)" 
commands[arrayi++] = "standardhitstun [value]" 
commands[arrayi++] = "voicefrequency [value]" 
commands[arrayi++] = "escape [minutes] [seconds]"
commands[arrayi++] = "togglecollision (true/false)"
commands[arrayi++] = "debugmode (true/false)"
if DEBUG 
{
	commands[arrayi++] = "changecharacter [player] [character] (true/false)"
	commands[arrayi++] = "room_goto [roomname] [targetdoor]"
}


//D3G: iirc counting and setting up arrays from the reverse (5 to 0) is slightly more memory efficient
//than starting from 0 but it should not matter much here...


//Help Command Pages
pagelength = 5
pagenumber = round(arrayi/5)



//Command functions
showcollisions = false
oldshowcollision = false
var i = 0;
showcollisionarray[i++] = obj_solid;
showcollisionarray[i++] = obj_slope;
showcollisionarray[i++] = obj_platform;
showcollisionarray[i++] = obj_platformside;
showcollisionarray[i++] = obj_movingplatformtrigger;
showcollisionarray[i++] = obj_secretbigblock;
showcollisionarray[i++] = obj_secretbigblock2;
showcollisionarray[i++] = obj_secretonewaybigblock;
showcollisionarray[i++] = obj_secretblock;
showcollisionarray[i++] = obj_secretblock2;
showcollisionarray[i++] = obj_secretmetalblock;
showcollisionarray[i++] = obj_crashplaneblock;
showcollisionarray[i++] = obj_pitcollider;
showcollisionarray[i++] = obj_precise_tile_checker;

//Funny Cursor
cursor = "|";
delay = 20;
alarm[0] = delay;

//Command History / Help Page
//D3G: Right now it's a help page thingy but it could be used as a Command History lolled
var page = 1
var first = pagelength * (page - 1)
var last = clamp(pagelength * page,1,array_length_1d(commands))
commandhistory = "COMMAND LIST (PAGE " + string(page) + " OF " + string(pagenumber) +")#"
for(var i = first; i < last; i++)
{
	commandhistory += (string(commands[i]) + "#")
}
