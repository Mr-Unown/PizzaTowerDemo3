

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
commands[arrayi++] = "changecharacter [player] [character] (true/false)"
commands[arrayi++] = "room_goto [roomname] [targetdoor]"
}
// its going to obviously look like something was omitted here
//but oh well!

//D3G: Well I fixed it
commands[arrayi++] = "escape [minutes] [seconds]"
commands[arrayi++] = "togglecollision (true/false)"
commands[arrayi++] = "debugmode (true/false)"

//D3G: iirc counting and setting up arrays from the reverse (5 to 0) is slightly more memory efficient
//than starting from 0 but it should not matter much here...

// command functions
showcollisions = false