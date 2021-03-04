with (other.id)
{
    if (character == "P")
    {
        if key_up2
        {
                if (paletteselect < 12)
                    paletteselect += 1
                else
                    paletteselect = 1
        }
    }
    if (character == "N")
    {
        if key_up2
        {
                if (paletteselect < 11)
                    paletteselect += 1
                else
                    paletteselect = 0
        }
    }
    if (character == "S")
    {
        if key_up2
        {
                if (paletteselect < 11)
                    paletteselect += 1
                else
                    paletteselect = 0
        }
    }
    if (character == "V")
    {
        if key_up2
        {
                if (paletteselect < 11)
                    paletteselect += 1
                else
                    paletteselect = 0
        }
    }
    if (character == "PM")
    {
        if key_up2
        {
                if (paletteselect < 5)
                    paletteselect += 1
                else
                    paletteselect = 0
        }
    }	
}


