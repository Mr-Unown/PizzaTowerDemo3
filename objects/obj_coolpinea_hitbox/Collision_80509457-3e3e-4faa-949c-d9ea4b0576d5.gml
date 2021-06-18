if instance_exists(ID)
if (ID.sprite_index != spr_coolpinea_parry && ID.sprite_index = spr_coolpinea_taunt && ID.parry == 0)
{
    with (other.id)
    {
        var _maxhsp = abs(spd)
        var _dir = sign(spd)
        if (x != other.x)
            _dir = sign((x - other.x))
        spd = (_maxhsp * _dir)
        spdh = random_range(4, -4)
        var targetxscale = (x - other.x)
        image_xscale = sign(targetxscale)
        other.ID.sprite_index = spr_coolpinea_parry
        other.ID.image_index = 0
        other.ID.parrying = 1
        other.ID.hurtedplayeridx = x
        other.ID.bombreset = 100
        other.ID.taunttimer = 0
        other.ID.state = 94
        instance_create(x, y, obj_bangeffect)
        instance_create(x, y, obj_slapstar)
        scr_soundeffect(sfx_taunt)
    }
}


