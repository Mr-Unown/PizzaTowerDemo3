function cutscene_title_start() // gml_Script_cutscene_title_start
{
    with (obj_player)
    {
		sprite_index = spr_bossintro;
		image_index = 0;
		state = states.bossintro;
		with (instance_create(x, y, obj_baddie_dead)) {
			sprite_index = spr_file2empty;
			canrotate = true;
			vsp = random_range(-2,-8);
			hsp = 0;		
		}
	}
    cutscene_end_action()
    return;
}
function cutscene_title_middle() // gml_Script_cutscene_title_middle
{
    var finish = 0
    with (obj_title)
    {
        collide = 1;
        if obj_player.grounded && obj_title.bounced = 1
            finish = 1;
    }
    if finish
        cutscene_end_action();
    return;
}

function cutscene_title_end() // gml_Script_cutscene_title_end
{
    if obj_inputAssigner.device_selected[0]
    {
        with (obj_player) {
			key_jump2 = false;
			key_jump = false;
            state = states.normal;
			sprite_index = spr_idle;
			movespeed = 0;
			image_index = 0;
		}
        cutscene_end_action();
    }
    else
    {
        with (obj_inputAssigner)
            press_start = 1;
    }
    return;
}

