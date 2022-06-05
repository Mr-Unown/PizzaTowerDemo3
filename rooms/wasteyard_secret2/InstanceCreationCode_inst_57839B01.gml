condition = function()
{
	return (!instance_exists(obj_collect))
}
output = function()
{
	/*with inst_625027EE
	{
		activated = true
		sprite_index = spr_secreteye_spawning;
		image_index = 0;
		visible = true;			
	}*/
	instance_create(obj_player1.x, obj_player1.y, obj_portaltrigger)
}