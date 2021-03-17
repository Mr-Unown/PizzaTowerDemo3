if (ds_list_find_index(global.baddieroom, id) != -1)
    instance_destroy()
if (ds_list_find_index(global.saveroom, id) != -1)
    sprite_index = spr_doorblocked


if place_meeting(x,y, obj_player) && sprite_index != spr_goldendoorvisited	 {
	sprite_index = spr_doorvisited	
}
