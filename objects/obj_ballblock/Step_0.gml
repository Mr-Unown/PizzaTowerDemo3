if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && obj_player.state == states.tumble)
instance_destroy()
if global.ratmode = true
sprite_index = spr_stupidpinsmall
else if global.ratmode = false
sprite_index = spr_rolldestroyable