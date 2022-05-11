//if (live_call()) return live_result;
/*if (!global.option_vibration)
    return;*/
with (obj_player)
{
    var _pindex = (object_index == obj_player1 ? 0 : 1)
    var _dvc = other.player_input_device[_pindex]
    if (state != other.prevstate[_pindex])
    {
        switch state
        {
            case states.tackle:
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                break
            case states.tumble:
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.8)
                break
            case states.fireass:
                GamepadSetVibration(_pindex, 0.6, 0.6, 0.8)
                break
            case states.firemouth:
				if (sprite_index == spr_firemouthintro)
                    GamepadSetVibration(_pindex, 1, 1, 0.9)
                break
            case states.hurt:
                GamepadSetVibration(_pindex, 1, 1, 0.85)
                break
            case states.bombpep:
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                if (sprite_index == spr_bombpepend)
                    GamepadSetVibration(_pindex, 1, 1, 0.9)
                break
            case states.Sjump:
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.85)
                break
            case (75 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                break
            case states.Sjumpland:
                GamepadSetVibration(_pindex, 1, 1, 0.9)
                break
            case states.knightpep:
                if (sprite_index == spr_knightpepthunder)
                    GamepadSetVibration(_pindex, 1, 1, 0.9)
                break
            case states.parry:
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.65)
                break
            case states.freefallland:
                GamepadSetVibration(_pindex, 1, 1, 0.85)
                break
            case states.chainsaw:
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                break
            case states.bump:
                if (sprite_index != spr_hitwall)
                    GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                else
                    GamepadSetVibration(_pindex, 1, 1, 0.85)
                break
            case states.handstandjump:
                GamepadSetVibration(_pindex, 0.2, 0.2, 0.9)
                break
            case states.grab:
                GamepadSetVibration(_pindex, 0.2, 0.2, 0.8)
                break
			case states.frozen:
				GamepadSetVibration(_pindex, 1, 1, 1)
				break
            default:
                GamepadSetVibration(_pindex,0, 0, other)
                break
        }

        other.prevstate[_pindex] = state
    }
}
for (var p = 0; p < array_length(vibration); p++)
{
	var _zeero = vibration[p][0]
	var _oone = vibration[p][1]
	var _twooo = vibration[p][2]
    _dvc = player_input_device[p]
    vibration[p][0] /**= _twooo*/ -= 0.008
    vibration[p][1] /**= _twooo*/ -= 0.008
    if (_zeero < 0)
        _zeero = 0
    if (_oone < 0)
        _oone = 0
    gamepad_set_vibration(_dvc, vibration[p][0], vibration[p][1])
}
