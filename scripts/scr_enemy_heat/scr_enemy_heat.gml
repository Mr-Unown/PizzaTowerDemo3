//Move
if ((!place_meeting(x, (y + 1), obj_railh)) && (!place_meeting(x, (y + 1), obj_railh2)))
    hsp = (image_xscale * movespeed)
else if (grounded && place_meeting(x, (y + 1), obj_railh))
    hsp = ((image_xscale * movespeed) - 5)
else if (grounded && place_meeting(x, (y + 1), obj_railh2))
    hsp = ((image_xscale * movespeed) + 5)

switch object_index
{
	case obj_cheeseslime:
	#region Cheeseslime
	if floor(image_index) >= image_number -1 && sprite_index  = spr_cheeseslime_heatstart
	{
		image_index = 0
		sprite_index = spr_cheeseslime_heat
		movespeed = 7
	}	
	if floor(image_index) >= image_number - 1 && sprite_index = spr_cheeseslime_heat
	{
		image_index = 0
        sprite_index = walkspr
        state = 102
        movespeed = 1
	}
	#endregion
	break;
	case obj_forknight:
	#region Forknight
	if floor(image_index) >= image_number -1 && sprite_index  = spr_forknight_heatstart
	{
		image_index = 0;
		sprite_index = spr_forknight_heat;
		movespeed = 7;
		heatbuffer = 50;
	}	
	if sprite_index = spr_forknight_heat
	{
		vsp = 0
		heatbuffer = approach(heatbuffer,0,1)
		if heatbuffer <= 0
		{
			image_index = 0;
			sprite_index = walkspr;
			state = 102;
			movespeed = 1;
		}
	}
	#endregion
	break;	
	case obj_fencer:
	#region Fencer
	if floor(image_index) >= image_number -1 && sprite_index  = spr_fencer_heatstart
	{
		image_index = 0;
		sprite_index = spr_fencer_heat;
		movespeed = 8;
		vsp = -5
		heatbuffer = 25;
	}	
	if sprite_index = spr_fencer_heat
	{
		heatbuffer = approach(heatbuffer,0,1)
		if heatbuffer <= 0
		{
			image_index = 0;
			sprite_index = spr_fencer_charge;
			state = enemystates.enemycharge;
			movespeed = 8;
		}
	}
	#endregion
	break;	
}
heatreset = 100
image_speed = 0.35
//Effects
if ((!instance_exists(dashcloudid)) && grounded && movespeed > 0)
{
    with (instance_create(x, y, obj_dashcloud))
    {
        image_xscale = other.image_xscale
        other.dashcloudid = id
    }
}