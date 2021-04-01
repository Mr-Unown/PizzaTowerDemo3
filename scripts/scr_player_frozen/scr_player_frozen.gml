var xx = x, yy = y;
if global.freezeframe = false {
state =	frozenstate;
sprite_index = frozenspriteindex;
image_index = frozenimageindex;
image_speed = frozenimagespeed;
movespeed = frozenmovespeed;
grav = frozengrav;
freefallsmash =	frozensmash;
hsp = frozenhsp;
vsp = frozenvsp;
input_buffer_jump = frozenjumpbuffer;
cutscene = false;
}
else {
vsp = 0
hsp = 0
x = xx
y = yy
image_speed = 0
grav = 0
movespeed = 0
cutscene = true;
	
}