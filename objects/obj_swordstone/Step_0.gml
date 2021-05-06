if sprite_index == spr_swordstonereappear && floor(image_index) == image_number	- 1
	sprite_index = spr_swordstone
if ((obj_player1.state == 24 || obj_player1.state == 25 || obj_player1.state == 18) && global.coop = false) || ((obj_player2.state == 24 || obj_player2.state == 25 || obj_player2.state == 18) && (obj_player1.state == 24 || obj_player1.state == 25 || obj_player1.state == 18) && global.coop = true)	
{
	showmarker = false;
}
else if global.freezeframe = false || obj_player1.state != states.frozen
	showmarker = true;
if (sprite_index == spr_swordstone && (!instance_exists(ID))) && showmarker = true
{
    with (instance_create(x, (y - 20), obj_grabmarker))
        other.ID = id
}
else if ((sprite_index == spr_swordstonetaken || sprite_index == spr_swordstonereappear) && instance_exists(ID)) || showmarker = false
    instance_destroy(ID)


