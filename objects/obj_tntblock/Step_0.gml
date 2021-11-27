var player = (global.coop = false ? obj_player1 : instance_nearest(x,y,obj_player));
if ((place_meeting((x + 1), y, player) || place_meeting((x - 1), y, player)) && player.state == states.firemouth)
    instance_destroy()