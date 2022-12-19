if (fadealpha > 1)
{
    fadein = 1
    if instance_exists(obj_player)
    {
        //with (obj_player)
        //{
            //if (place_meeting(x, y, obj_goldendoor) && room == credit_room)
               // game_restart()
        //}
        if (room != obj_player.targetRoom)
            room_goto(obj_player.targetRoom)
    }
}
if (fadein == 0)
    fadealpha += 0.1
else if (fadein == 1)
    fadealpha -= 0.1
if instance_exists(obj_player)
{
    with (obj_player)
    {
        if (other.fadein == 1 && (obj_player.state == 71 || obj_player.state == 57 || obj_player.state == 1) && (place_meeting(x, y, obj_door) || place_meeting(x, y, obj_startgate) || obj_player.state == 1))
        {
            state = 54
            image_index = 0
        }
		if (other.fadein == 1 && obj_player.state == 71 && (obj_player.sprite_index == spr_player_downpizzabox || obj_player.sprite_index == spr_player_uppizzabox))
        {
            state = 60
        }
    }
}
if (fadein == 1 && fadealpha < 0)
    instance_destroy()
