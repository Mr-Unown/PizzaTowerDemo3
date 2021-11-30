scr_commonenemy()
/*
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (hp <= 0)
    instance_destroy()
if (cigar == 1)
{
    landspr = 132
    idlespr = 140
    fallspr = 134
    hitceillingspr = 126
    stunfalltransspr = 124
    hitwallspr = 118
    stunfallspr = 122
    rollingspr = 112
    walkspr = 138
    turnspr = 136
    flyingspr = 128
    hitspr = 130
    stunlandspr = 116
    stunspr = 114
    recoveryspr = 110
    stompedspr = 120
    grabbedspr = 108
}
if (cigar == 0)
{
    landspr = 131
    idlespr = 139
    fallspr = 133
    hitceillingspr = 125
    stunfalltransspr = 123
    hitwallspr = 117
    stunfallspr = 121
    rollingspr = 111
    walkspr = 137
    turnspr = 135
    flyingspr = 127
    hitspr = 129
    stunlandspr = 115
    stunspr = 113
    recoveryspr = 109
    stompedspr = 119
    grabbedspr = 106
}
if (cigar == 1 && cigarcreate == 0 && (state == 94 || state == 102 || state == 98 || state == 104))
{
    cigarcreate = 1
    with (instance_create(x, y, obj_sausagemancigar))
        ID = other.id
}
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
*/
if (state == 106 && stunned > 60 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 106)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
scr_scareenemy()
if (state != 109)
    depth = 0
if (state != 106)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}

