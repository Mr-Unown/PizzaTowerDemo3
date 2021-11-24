with (obj_player1)
switch state
        {
            case (states.bashhit):
                scr_GamepadSetVibration(1, 0.8, 0.8, 0.6)
                break
			case (states.knightpep):
                if (sprite_index == spr_knightpepland)
                    scr_GamepadSetVibration(1, 1, 1, 0.9)
                break
        }