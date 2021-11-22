flags.do_once = false;
flags.do_save = false;
created = noone;
condition = function()
{
	var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
	return (place_meeting(x,y,player) && player.state = states.freefallland)
}
output = function()
{
	if created = noone
	{
		with instance_create(1664,1362,obj_treasureguy)
		{
			sprite_index = spr_treasureguy_popout;
			image_index = 0;
			activated = false
			other.created = id
		}
	}
	if !instance_exists(created)
		created = noone;
}