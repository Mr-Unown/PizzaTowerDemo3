instance_create((room_width / 2), (room_height / 2), obj_rank)
obj_player1.visible = false
obj_player2.visible = false
if (obj_player1.collectscore >= obj_player2.collectscore)
{
    with (instance_create(obj_player2.x, obj_player2.y, obj_dashcloud))
        sprite_index = spr_bombexplosion
    repeat (6)
        instance_create(obj_player2.x, obj_player2.y, obj_baddiegibs)
}
if (obj_player2.collectscore > obj_player1.collectscore)
{
    with (instance_create(obj_player1.x, obj_player1.y, obj_dashcloud))
        sprite_index = spr_bombexplosion
    repeat (6)
        instance_create(obj_player1.x, obj_player1.y, obj_baddiegibs)
    scr_soundeffect(sfx_explosion)
}


