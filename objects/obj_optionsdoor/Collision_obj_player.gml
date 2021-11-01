with (other.id)
{
	if grounded && (key_up && (state == 0 || state == 69 || state == 70 || state == 91 || state == 65) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != 78 && state != 61 && ((obj_player1.spotlight == 1 && object_index == obj_player1) || (obj_player1.spotlight == 0 && object_index == obj_player2)))
	{
	    instance_create(x, y, obj_mainconfig)
		obj_player1.state = 8
	    if global.coop == true
			obj_player2.state = 8
	}
}