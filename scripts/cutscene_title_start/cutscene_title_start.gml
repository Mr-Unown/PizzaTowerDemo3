function cutscene_title_start() // gml_Script_cutscene_title_start
{
    with (obj_player)
        {
		sprite_index = spr_bossintro
		image_index = 0
		state = states.bossintro
		with(instance_create(x, y, obj_baddie_dead))
			sprite_index = spr_file2empty
		}
    cutscene_end_action()
    return;
}
function cutscene_title_middle() // gml_Script_cutscene_title_middle
{
    var finish = 0
    with (obj_title)
    {
        collide = 1
        if obj_player.grounded && obj_title.bounced = 1
            finish = 1
    }
    if finish
        cutscene_end_action()
    return;
}

function cutscene_title_end() // gml_Script_cutscene_title_end
{
    with (obj_player)
        sprite_index = spr_idle
    if obj_inputAssigner.device_selected[0]
    {
        with (obj_player)
            state = states.normal
        cutscene_end_action()
    }
    else
    {
        with (obj_inputAssigner)
            press_start = 1
    }
    return;
}

