with (obj_player)
{
    if (key_up && ladderbuffer == 0 && (state == 0 || state == 63 || state == 83 || state == 62 || state == 23 || state == 51 || state == 25) && state != 66 && state != 64 && state != 67 && state != 70)
    {
        mach2 = 0
        state = 52
        x = (other.x + 16)
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
