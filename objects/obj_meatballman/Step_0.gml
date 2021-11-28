// Inherit the parent event
event_inherited();
state = meatstate;
//Bird
if (meatstate == meatballstate.stunned && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
	{
        ID = other.id
		stunnedcheck = 0
		checkstate = meatballstate.stunned
	}
}
else if meatstate != meatballstate.stunned
	birdcreated = false
//Grab
if (grabbed == 0)
{
    depth = 1
	if meatstate = meatballstate.grabbed
	{
		meatstate = meatballstate.stunned;
		sprite_index = spr_meatball_idle;
		stunned = stuntime_max;
	}
}
else if grabbed == true
{
	meatstate = meatballstate.grabbed
	stunned = stuntime_max
	sprite_index = spr_meatball_idle
}
//Wait for player
if meatstate == meatballstate.waiting
{
	vsp = 0;
	sprite_index = spr_meatball_idle
}
//Fall Down
if (obj_player.state == states.freefall && obj_player.grounded)
{
    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]) - 16, camera_get_view_y(view_camera[0]) - 16, (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])+16), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])+16))
    {
		if meatstate == meatballstate.waiting
		{
			meatstate = meatballstate.falling
			hsp = 0;
			movespeed = 0;			
		}
		else if grounded
		{
			vsp = -6;
			meatstate = meatballstate.stunned;
			stunned = stuntime_max;
		}
    }
}
//Rolling Polling
if meatstate = meatballstate.falling
{
	image_index = 0;
	sprite_index = spr_meatball_idle;	
	if grounded = true
		meatstate = meatballstate.rolling;
}
if meatstate = meatballstate.rolling
{
	if grounded == true
		hsp = sign(image_xscale) * movespeed
	if movespeed < 8
		movespeed++	
	if (scr_solid(x + sign(image_xscale),y) && !scr_slope_ext(x + sign(hsp),y)) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
		image_xscale *= -1
	sprite_index = spr_meatball_roll		
}
//Stun
if meatstate = meatballstate.stunned
{
	sprite_index = spr_meatball_idle	
	if grounded && vsp > 0
		hsp = 0
	if stunned <= 0
	{
		vsp = -2
		meatstate = meatballstate.rolling
		sprite_index = spr_meatball_roll
	}
}
//Outside Room
if x <= -128 || x >= room_width + 128 || y >= room_height + 128
{
	#region Reset
	thrown = 0
	depth = 0;
	grabbed = 0
	playerid = obj_player1
	hsp = 0
	vsp = 0
	grav = 0.5
	flash = 1
	hp = 1
	grounded = 1
	rolling = false;
	movespeed = 0;
	activated = false;
	image_speed = 0.35
	stunned = 0
	stuntime_max = 50
	state = meatballstate.waiting;
	meatstate = meatballstate.waiting;
	stuntouchbuffer = 0
	stuntouchbuffer_max = 50
	x = xstart
	y = ystart
	with (instance_create((x + random_range(-5, 5)), (y + random_range(-5, 5)), obj_balloonpop))
	{
		image_speed = 0.35
		sprite_index = spr_bigpoofclouds
		image_angle = choose(0,90,180,270)
	}		
	#endregion	
}
//Stun
if thrown = false && grabbed = false
	stunned--
else if thrown = true
	stunned = stuntime_max
stunned = clamp(stunned,0,stuntime_max)

stuntouchbuffer = clamp(stuntouchbuffer--,0,stuntouchbuffer_max)