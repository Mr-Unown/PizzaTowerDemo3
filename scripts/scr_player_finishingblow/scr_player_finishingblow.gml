function scr_player_finishingblow() {
	onceonly = false;
	hsp = -xscale * movespeed
	vsp = 0
	movespeed = approach(movespeed,0,0.25)
	if (floor(image_index) >= (image_number - 1))
	    state = 0
	if (floor(image_index) >= 6 && (!instance_exists(swordhitboxid))) && onceonly = false
	{
		GamepadSetVibration((object_index == obj_player1 ? 0 : 1), 1, 1, 1)
	    scr_soundeffect(sfx_punch)
	    scr_soundeffect(sfx_killingblow)
	    with (instance_create(x, y, obj_swordhitbox))
		{
	        playerid = other.id
			other.swordhitboxid = id;
		}
		onceonly = true;
		movespeed = 7;
	}
	
	if (floor(image_index) == (image_number - 4))
	{
	    with (obj_camera)
	        zoom = 0
	}

	if (sprite_index == spr_swingdingend && floor(image_index) >= 0 && (!instance_exists(swordhitboxid))) && onceonly = false
	{
		GamepadSetVibration(0, 0.8, 0.8, 0.65)
	    scr_soundeffect(sfx_killingblow)
	    with (instance_create(x, y, obj_swordhitbox))
		{
	        playerid = other.id
			other.swordhitboxid = id;
		}
	        playerid = other.object_index
		onceonly = true;
		movespeed = 5;
	}
	if (sprite_index == spr_charge)
	{
	    if (sprite_index == spr_swingding)
	        sprite_index = spr_swingdingend
	    else if (!key_up)
	        sprite_index = choose(spr_finishingblow1, spr_finishingblow2, spr_finishingblow3, spr_finishingblow4, spr_finishingblow5)
	    else if key_up
	        sprite_index = spr_uppercutfinishingblow
	    image_index = 0
	}
	if character != "GB"
	image_speed = 0.5
	else
	image_speed = .35
	landAnim = 0




}
