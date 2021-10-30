if (selected == 0)
{
    if keyboard_check_pressed(vk_f5)
    {
        instance_create(0, 0, obj_manual)
		obj_player1.state = 8
	    if global.coop == true
			obj_player2.state = 8		
		selected = 1			
    }
}
//Text
if (showtext == 1)
	yi = approach(yi,500,5);
else
	yi = approach(yi,600,1);
xi = 500 + random_range(1, -1);

