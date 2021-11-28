function scr_controllervibration(){
with (obj_player)
{
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
                setVibration(0, 0, 0, other)
                break
        }

        other.prevstate[1] = state
    }
}
for (var p = 0; p < array_length(vibration); p++)
{
    _dvc = player_input_device[1]
    vibration[1][0] *= vibration[p][2]
    vibration[1][1] *= vibration[p][2]
    if (vibration[1][0] < 0)
        vibration[1][0] = 0
    if (vibration[1][1] < 0)
        vibration[1][1] = 0
    gamepad_set_vibration(_dvc, vibration[1][0], vibration[1][1])
}

}