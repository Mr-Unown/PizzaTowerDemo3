// Inherit the parent event
event_inherited();

if (grabbed == 0)
    depth = 4
//Wait for player
if activated = false
	vsp = 0;
//Fall Down
if (obj_player.state == states.freefall && obj_player.grounded)
{
    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]) - 16, camera_get_view_y(view_camera[0]) - 16, (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])+16), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])+16))
    {
		if activated = false
			activated = true
		else if grounded && rolling
			vsp = -6
    }
}
//Rolling Polling
if activated = true && grounded
	rolling = true;
if rolling == true
{
	hsp = sign(image_xscale) * movespeed
	if (scr_solid(x + sign(image_xscale),y) && !scr_slope_ext(x + sign(hsp),y)) || place_meeting((x + sign(image_xscale)), y, obj_hallway) 
		image_xscale *= -1
}

//Outside Room
if x <= -128 || x >= room_width + 128 || y >= room_height + 128
{
	#region Reset
	thrown = 0
	grabbed = 0
	playerid = obj_player1
	hsp = 0
	vsp = 0
	grav = 0.5
	flash = false
	hp = 1
	grounded = 1
	state = 0
	rolling = false;
	movespeed = 0;
	activated = false;
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