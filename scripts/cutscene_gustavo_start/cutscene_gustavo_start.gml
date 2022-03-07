function cutscene_gustavo_start()
{
    if ((!instance_exists(obj_fadeout)) && obj_player.state != states.taxi && obj_player.state != states.comingoutdoor && obj_player.state != states.hurt)
{
    with (obj_player)
    {
        visible = true
        image_alpha = 1
        state = states.cutsceneactor
        sprite_index = spr_idle
        image_speed = 0.35
        xscale = 1
        hsp = 0
        vsp = 0
    }
    with (obj_gustavo)
    {
        state = states.cutsceneactor
        if global.failcutscene = false
            sprite_index = spr_gustavo_makepizza
        else
            sprite_index = spr_gustavo_idle
        image_speed = 0.35
        image_xscale = -1
    }
    cutscene_end_action()
}
}

