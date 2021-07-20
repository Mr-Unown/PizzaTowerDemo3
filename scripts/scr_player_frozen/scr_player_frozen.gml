move = (key_right + key_left)


//Freeze Frame
if global.freezeframe = true
{
	for (var i = 0; i < 10; i++)
	{
		if alarm_get(i) > 0 
			alarm_set(i, -1);
	}
	vsp = 0
	hsp = 0
	image_speed = 0
	movespeed = 0
	cutscene = true;
}
else
{
	for (var i = 0; i < 10; i++)
	{
		alarm_set(i, frozenalarm[i]);
	}	
	sprite_index = frozenspriteindex;
	image_index = frozenimageindex;
	image_speed = frozenimagespeed;
	movespeed = frozenmovespeed;
	grav = frozengrav;
	freefallsmash =	frozensmash;
	hsp = frozenhsp;
	vsp = frozenvsp;
	if !key_jump2 
	{
		input_buffer_jump = frozenjumpbuffer;
	}
	else if key_jump2 
	{
		input_buffer_jump = 0;
		#region Jumping
	if ((!grounded) && frozenstate != 74 && instakillmove = true) 
    {
		if (frozenstate == 70 || (frozenstate == 91 && fightball == 0))
        {
			if (character != "V")
				sprite_index = spr_mach2jump
            else
                sprite_index = spr_playerV_spinjump1
        }
        suplexmove = 0
        vsp = -11
    }
	if grounded && frozenstate = states.mach3 && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1)
	{
		scr_soundeffect(0)
		if (sprite_index != spr_fightball1 && sprite_index != spr_fightball2)
		{
	        image_index = 0
			sprite_index = spr_mach3jump
		}
		if (character == "P")
			vsp = -11
		else
			vsp = -13	
	}
	if frozenstate = states.mach2 && (grounded && (!(move == 1 && xscale == -1)) && (!(move == -1 && xscale == 1)))
	{
    image_index = 0
    sprite_index = spr_secondjump1
    scr_soundeffect(0)
    if (character == "P")
        vsp = -11
    else
        vsp = -13
	}
	if (frozenstate = states.mach1 && grounded)
	{
		scr_soundeffect(0)
		sprite_index = spr_airdash1
		dir = xscale
		momemtum = 1
		if (character == "P")
			vsp = -11
		else
	        vsp = -13
		jumpAnim = 1
		image_index = 0
	}	
	#endregion
	}
	state =	frozenstate;
	cutscene = false;
}
