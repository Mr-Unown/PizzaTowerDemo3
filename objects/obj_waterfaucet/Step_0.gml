if (sprite_index = spr_onoffswitch_bluetored || sprite_index = spr_onoffswitch_redtoblue) && floor(image_index) >= image_number - 1
{
	if sprite_index = spr_onoffswitch_bluetored
	sprite_index = spr_onoffswitch_red
	else
	sprite_index = spr_onoffswitch_blue
}
var player = instance_nearest(x,y,obj_player)
if global.coop = false
player = obj_player1
if ((player.state = 22 || player.state = states.kingknightroll) && place_meeting(x, y, player))
{
    with (player)
    {
        if (state == 22) || (state == states.kingknightroll)
        {
            sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4, spr_punch)
            suplexdashtimer = 7;
            image_index = 0
            state = states.tackle;
			substate = 1;
            movespeed = 5;
            vsp = -3
			with other.id
			{
				if sprite_index = spr_onoffswitch_blue
					sprite_index = spr_onoffswitch_bluetored
				else
					sprite_index = spr_onoffswitch_redtoblue
				can_switch = false
				alarm[0] = 50
			}
        }		
    }
}