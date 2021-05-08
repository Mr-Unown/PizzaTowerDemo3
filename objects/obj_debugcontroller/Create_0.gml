active = false
input = ""
keyboard_string = ""
inputbuffer = 2
inputmax = 2
deletebuffer = 6
deletemax = 6

// this is for listing commands and functions, all the adding is done with end step
//Items in brackets are required
//Items in parentheses are optional
commands[0] = "changecharacter [player] [character] (true/false)"
commands[1] = "room_goto [roomname] [targetdoor]"
commands[2] = "escape [minutes] [seconds]"
commands[3] = "togglecollision (true/false)"
commands[4] = "debugmode (true/false)"



// command functions
showcollisions = false