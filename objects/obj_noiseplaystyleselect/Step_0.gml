if activated = true && wait = false && wwait = false {
alarm[0] = 5
wwait = true
}

if wait = true && selected = false {
visible = 1	
if ((playerid.key_right2) && selected = false && selection = 0)
{
	image_index = 1
    selection = 1
    scr_soundeffect(29)
}
if ((-playerid.key_left2) && selected = false && selection = 1)
{
	image_index = 0
    selection = 0
    scr_soundeffect(29)
}
if playerid.key_jump && selection = 0 {
selected = true
playerid.pogo = false

}
else if playerid.key_jump && selection = 1 {
selected = true
playerid.pogo = true

}

}