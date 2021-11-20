depth = 5;

movespeed = 3
movespeed_max = 3
speed_acc = 0.5

hsp = 0
vsp = 0

h_vel = 0
v_vel = 0

v_corr = 0

timer = 0

enum _DIRECTION
{
	forward = 1,
	backward = -1,
	none = 0
}

hdir = _DIRECTION.forward
vdir = _DIRECTION.none

queued_hdir = 0
queued_vdir = 0

	
stop = 0
stop_max = 3
stop_acc = 0.5
stop_decc = 0.5
stopped = false
stopid = noone
