if (y > (room_height + 100) && (!instance_exists(obj_fadeout)))
{
    landAnim = 0
    instance_create(x, y, obj_fadeout)
    if (obj_player1.spotlight == 1)
    {
        obj_player1.targetRoom = obj_player1.lastroom
        obj_player2.targetRoom = obj_player1.lastroom
        obj_player1.player_x = obj_player1.lastroom_x
        obj_player1.player_y = obj_player1.lastroom_y
        obj_player2.player_x = obj_player1.lastroom_x
        obj_player2.player_y = obj_player1.lastroom_y
    }
    else
    {
        obj_player1.targetRoom = obj_player2.lastroom
        obj_player2.targetRoom = obj_player2.lastroom
        obj_player1.player_x = obj_player2.lastroom_x
        obj_player1.player_y = obj_player2.lastroom_y
        obj_player2.player_x = obj_player2.lastroom_x
        obj_player2.player_y = obj_player2.lastroom_y
    }
    state = 72
    global.seconds = 20
    obj_camera.ded = 0
}
sprite_index = spr_deathend
if (vsp < 12)
    vsp += grav
x += hsp
y += floor(vsp)
hurted = 0
cutscene = 1
inv_frames = 0
alarm[8] = -1
alarm[7] = -1
