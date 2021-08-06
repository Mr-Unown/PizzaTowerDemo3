with (other.id)
{
    if (state != 24 && state != 25 && state != 18 && state != 10)
    {
        xscale = (-other.image_xscale)
        state = 72
        hsp = ((-xscale) * 5)
        vsp = -6
        mach2 = 0
        image_index = 0
        machslideAnim = 1
        machhitAnim = 0
        movespeed = 0
        if (!instance_exists(obj_bumpeffect))
            instance_create((x + 10), (y + 10), obj_bumpeffect)
        if (other.sprite_index != spr_grandpa_punch)
        {
            scr_soundeffect(sfx_killingblow)
            other.image_index = 0
            other.sprite_index = spr_grandpa_punch
        }
    }
    else if ((state == 24 || state == 25 || state == 18 || state == 10) && cutscene == 0)
        instance_destroy(other.id)
}


