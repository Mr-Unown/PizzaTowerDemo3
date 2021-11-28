/*if (!global.option_vibration)
    return;*/
with (obj_player)
{
    var _pindex = (object_index == obj_player1)
    var _dvc = other.player_input_device[_pindex]
    if (state != other.prevstate[_pindex])
    {
        switch state
        {
            case states.tackle:
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                break
            case states.tumble:
                GamepadSetVibration(1, 0.8, 0.8, 0.8)
                break
            case states.fireass:
                GamepadSetVibration(1, 1, 1, 0.85)
                break
            case states.firemouth:
                GamepadSetVibration(1, 0.8, 0.8, 0.85)
                break
            case states.hurt:
                GamepadSetVibration(1, 1, 1, 0.85)
                break
            case states.bombpep:
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                if (sprite_index == spr_bombpepend)
                    GamepadSetVibration(1, 1, 1, 0.9)
                break
            case states.Sjump:
                GamepadSetVibration(1, 0.8, 0.8, 0.85)
                break
            case (75 << 0):
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                break
            case states.Sjumpland:
                GamepadSetVibration(1, 1, 1, 0.9)
                break
            case states.knightpep:
                if (sprite_index == spr_knightpepthunder)
                    GamepadSetVibration(1, 1, 1, 0.9)
                break
            case states.parry:
                GamepadSetVibration(1, 0.8, 0.8, 0.65)
                break
            case states.freefallland:
                GamepadSetVibration(1, 1, 1, 0.85)
                break
            case states.chainsaw:
                GamepadSetVibration(1, 0.8, 0.8, 0.6)
                break
            case states.bump:
                if (sprite_index != spr_hitwall)
                    GamepadSetVibration(1, 0.8, 0.8, 0.6)
                else
                    GamepadSetVibration(1, 1, 1, 0.85)
                break
            case states.handstandjump:
                GamepadSetVibration(1, 0.2, 0.2, 0.9)
                break
            case states.grab:
                GamepadSetVibration(1, 0.2, 0.2, 0.8)
                break
            default:
                GamepadSetVibration(0, 0, 0, other)
                break
        }

        other.prevstate[_pindex] = state
    }
}
for (var p = 0; p < array_length(vibration); p++)
{
    _dvc = player_input_device[p]
   /* vibration[p][0] *= vibration[p][2]
    vibration[p][1] *= vibration[p][2]
    if (vibration[p][0] < 0)
        vibration[p][0] = 0
    if (vibration[p][1] < 0)
        vibration[p][1] = 0 */
    gamepad_set_vibration(_dvc, vibration[p][0], vibration[p][1])
}
