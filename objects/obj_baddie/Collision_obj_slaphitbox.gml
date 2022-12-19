if object_index != obj_charcherry
{
	scr_sound(9)
	instance_create((x + (obj_player.xscale * 40)), y, obj_punchdust)
	if obj_player.character == "P"
	{
		if global.cane == 0
		{
			with (obj_player)
			{
			    suplexhavetomash = 5
			    sprite_index = spr_grab
			}
			obj_player.baddiegrabbedID = id
			obj_player.state = 39
		
			state = 101
			instance_destroy(other.id)
		}
		else
		{
			state = 98
			hp -= 1
			thrown = 1
			hsp = obj_player.xscale * 15
			vsp = -6
			obj_player.hsp = 0
			obj_player.vsp = 0
			obj_player.sprite_index = obj_player.spr_canehit
			obj_player.state = 90
		}
	}
	if obj_player.character == "DEEZNUTS" && thrown == 0 && state != 98
	{
		state = 98
		hp -= 1
		thrown = 1
		hsp = obj_player.xscale * 15
		vsp = -6
	}
}