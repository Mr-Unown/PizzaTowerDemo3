// Inherit the parent event
event_inherited();
thrown = 0
depth = 1;
grabbed = 0
playerid = obj_player1
hsp = 0
vsp = 0
grav = 0.5
flash = 1
hp = 1
grounded = false
state = 0
rolling = false;
movespeed = 0;
activated = false;
image_speed = 0.35
birdcreated = 0;


stunned = 0
stuntime_max = 50
state = meatballstate.waiting;
meatstate = meatballstate.waiting;
stuntouchbuffer = 0
stuntouchbuffer_max = 50

enum meatballstate
{
	waiting,
	rolling,
	falling,
	grabbed,
	stunned
}