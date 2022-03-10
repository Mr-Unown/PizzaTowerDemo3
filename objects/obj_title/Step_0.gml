if (bounced != 2)
    y += vsp
vsp += grav
if (y >= 64 && bounced == 0 && vsp > 0)
{
    vsp = -4
    bounced = 1
    repeat (20)
        instance_create((x + random(315)), 215, obj_debris)
    /*with (obj_player)
    {
		sprite_index = spr_bossintro
		image_index = 0
		state = 54
		with(instance_create(x, y, obj_baddie_dead))
			sprite_index = spr_file2empty
    }*/
	with (instance_create(0, 0, obj_cutscene_handler)) {
		scene_info = [[cutscene_title_start], [cutscene_title_middle], [cutscene_title_end]]
	}
	camera_shake(10, 30);
}
if (y >= 64 && bounced == 1 && vsp > 0)
{
    vsp = 0
    grav = 0
    bounced = 2
    repeat (20)
        instance_create((x + random(315)), 215, obj_debris)
	camera_shake(5, 30);
}