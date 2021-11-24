if global.vibration = false
    return;
with (obj_player)
{
    var _pindex = (object_index == obj_player1 ? obj_hardmode : obj_grindrailslope)
    var _dvc = other.player_input_device[_pindex]
    if (state != other.prevstate[_pindex])
    {
        switch state
        {
            case (67 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                break
            case (5 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.8)
                break
            case (9 << 0):
                GamepadSetVibration(_pindex, 1, 1, 0.85)
                break
            case (10 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.85)
                break
            case (83 << 0):
                GamepadSetVibration(_pindex, 1, 1, 0.85)
                break
            case (36 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                if (sprite_index == spr_bombpepend)
                    GamepadSetVibration(_pindex, 1, 1, 0.9)
                break
            case (73 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.85)
                break
            case (75 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                break
            case (96 << 0):
                GamepadSetVibration(_pindex, 1, 1, 0.9)
                break
            case (33 << 0):
                if (sprite_index == spr_knightpepthunder)
                    GamepadSetVibration(_pindex, 1, 1, 0.9)
                break
            case (120 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.65)
                break
            case (87 << 0):
                GamepadSetVibration(_pindex, 1, 1, 0.85)
                break
            case (43 << 0):
                GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                break
            case (82 << 0):
                if (sprite_index != spr_hitwall)
                    GamepadSetVibration(_pindex, 0.8, 0.8, 0.6)
                else
                    GamepadSetVibration(_pindex, 1, 1, 0.85)
                break
            case (31 << 0):
                GamepadSetVibration(_pindex, 0.2, 0.2, 0.9)
                break
            case (56 << 0):
                GamepadSetVibration(_pindex, 0.2, 0.2, 0.8)
                break
            default:
                _pindex._pindex.setVibration(0, 0, other)
                break
        }

        other.prevstate[_pindex] = state
    }
}
for (var p = 0; p < array_length(vibration); p++)
{
    _dvc = player_input_device[p]
    vibration[p][0] *= vibration[p][2]
    vibration[p][1] *= vibration[p][2]
    if (vibration[p][0] < 0)
        vibration[p][0] = 0
    if (vibration[p][1] < 0)
        vibration[p][1] = 0
    gamepad_set_vibration(_dvc, vibration[p][0], vibration[p][1])
}
