function scr_player_finishingblow() {
	hsp = (xscale * movespeed)
	if (movespeed > 0)
	    movespeed -= 0.5
	if (floor(image_index) == (image_number - 1))
	    state = 0
	if (floor(image_index) == 6 && (!instance_exists(obj_swordhitbox)))
	{
	    scr_sound(sound_enemyslap)
	    scr_sound(sound_slaphit)
	    instance_create(x, y, obj_swordhitbox)
	}
	if (floor(image_index) == 0 && (!instance_exists(obj_swordhitbox)) && sprite_index == spr_player_swingdingend)
	{
	    scr_sound(14)
	    instance_create(x, y, obj_swordhitbox)
	}
	image_speed = 0.35
	landAnim = 0

	vsp = 0
	if global.cane == 0
		hsp = 0
	if global.cane == 1
		hsp = -4 * xscale


}
