//Redo of slope angle
function scr_slopeangle()
{
	/// @description scr_slopeangle - checks player angle
	/// @param x
	/// @param y
	var array = 0;
	var checkside = -1
	var height = sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index)
	var top = -3;
	var i = 0;	
	array[0] = y
	array[1] = y
	while i < 2
	{
		while top < height
		{
			array[i] = y;
			var check_1 =  scr_solid_player(x + (1 * checkside),y + top), check_2 = !scr_solid_player(x + (1 * checkside),y + top - 1)
			if check_1 && check_2
			{
				var sex = y + top - 1
				array[i] = sex
				break;
			}
			top++
		}
		//It turns negative
		checkside = !checkside
		i++
	}
	var pointer1 = array[0], pointer2 = array[1];
	var _angle = 0;
	if pointer1 != pointer2
		_angle =  point_direction(x - 1,pointer1,x + 1,pointer2);
	return _angle;
}