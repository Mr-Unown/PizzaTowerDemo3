condition = function()
{
	return (!instance_exists(inst_7710C5C) && !instance_exists(inst_525C48F2))
}
output = function()
{
	with inst_ACA2386
	{
		activated = true
		sprite_index = spr_secreteye_spawning;
		image_index = 0;
		visible = true;			
	}
}