condition = function()
{
	var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
	return (place_meeting(x,y,player))
}
output = function()
{
	with obj_secreteye
	{
		activated = true
		sprite_index = spr_secreteye_spawning;
		image_index = 0;
		visible = true;		
	}
	instance_create(x,y,obj_safeexplosion)
}