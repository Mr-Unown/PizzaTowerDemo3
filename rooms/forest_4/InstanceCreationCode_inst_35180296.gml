if ((!global.pizzadelivery) && global.pizzasdelivered < 5 && global.panic == 0)
{
    if global.failcutscene = false
    {
        if (global.pizzasdelivered <= 0)
            scene_info = [[cutscene_set_sprite, obj_gustavo, spr_gustavo_makepizza, 0.35, -1], [cutscene_gustavo_start], [cutscene_wait, 30], [cutscene_set_sprite, obj_gustavo, spr_gustavo_showpizza, 0.35, -1], [cutscene_wait, 10], [cutscene_move_player, obj_player1, (obj_gustavo.x - 48), 6, 16], [cutscene_set_sprite, obj_player1, obj_player1.spr_gnomepizza, 0.35, 1], [cutscene_set_sprite, obj_gustavo, spr_gustavo_givepizza, 0.35, -1], [cutscene_gustavo_end]]
        else
            scene_info = [[cutscene_set_sprite, obj_gustavo, 2021, 0.35, -1]]
    }
    else
        scene_info = [[cutscene_gustavofail_start], [cutscene_wait, 20], [cutscene_set_sprite, obj_gustavo, 2025, 0.35, -1], [cutscene_waitfor_sprite, obj_gustavo], [cutscene_set_sprite, obj_gustavo, 2026, 0.35, -1], [cutscene_wait, 50], [cutscene_set_sprite, obj_gustavo, 2027, 0.35, -1], [cutscene_set_sprite, obj_player1, 2016, 0.35, 1], [cutscene_waitfor_sprite, obj_gustavo], [cutscene_set_sprite, obj_gustavo, 2028, 0.35, -1], [cutscene_set_hsp, obj_gustavo, -12], [cutscene_set_sprite, obj_player1, 2018, 0.35, 1], [cutscene_waitfor_sprite, obj_player1], [cutscene_set_sprite, obj_player1, 2019, 0.35, 1], [cutscene_check_collision, obj_gustavo, obj_player1], [cutscene_set_hsp, obj_gustavo, 0], [cutscene_gustavofail_end, 100], [cutscene_move_actor, obj_gustavo, obj_gustavo.xstart, obj_gustavo.ystart, 0.05], [cutscene_set_sprite, obj_gustavo, 2021, 0.35, -1]]
}
else
    scene_info = [[cutscene_wait, 2]]
