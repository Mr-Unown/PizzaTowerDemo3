

active = false
input = ""
keyboard_string = ""
inputbuffer = 2
inputmax = 2
deletebuffer = 6
deletemax = 6
arrayi = 0
// this is for listing commands and functions, all the adding is done with end step
//Items in brackets are required
//Items in parentheses are optional
if DEBUG 
{
/* Cursed Commands (DANGER WARNING)
commands[arrayi++] = "create [obj] (x) (y)"
commands[arrayi++] = "destroy [obj] (true/false)"
commands[arrayi++] = "set [obj.variable] [value]"	*/
commands[arrayi++] = "changecharacter [player] [character] (true/false)"
commands[arrayi++] = "room_goto [roomname] [targetdoor]"
}
// its going to obviously look like something was omitted here
//but oh well!

//D3G: Well I fixed it
commands[arrayi++] = "standardhitstun [value]" //Funny secret option
commands[arrayi++] = "voicefrequency [value]" //Another funny secret
commands[arrayi++] = "heatmeter (true/false)" //Another funny secret
commands[arrayi++] = "escape [minutes] [seconds]"
commands[arrayi++] = "newhud (true/false)"
commands[arrayi++] = "togglecollision (true/false)"
commands[arrayi++] = "debugmode (true/false)"


//D3G: iirc counting and setting up arrays from the reverse (5 to 0) is slightly more memory efficient
//than starting from 0 but it should not matter much here...

// command functions
showcollisions = false