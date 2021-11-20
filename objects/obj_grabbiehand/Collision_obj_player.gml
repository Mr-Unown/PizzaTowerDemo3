if (sprite_index == spr_grabbiehand_fall)
{
    with (obj_player)
    {
        if state == states.boxxedpep
        {
            scr_soundeffect(sfx_bumpwall)
            scr_soundeffect(sfx_loseknight)
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 0
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 1
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 2
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 3
            with (instance_create(x, y, obj_boxxeddebris))
                image_index = 4
        }
        if state == states.cheesepepstick || state == states.cheesepep
        {
			var size = random_range(0.6, 1.2)
            scr_soundeffect(sfx_bumpwall)
            scr_soundeffect(sfx_loseknight)
            repeat (8)
            {
                with (instance_create((other.x + random_range(-5, 5)), (other.y + random_range(-5, 5)), obj_slimedebris))
                {
                    image_xscale = size
                    image_yscale = image_xscale
                }
            }
        }
    }
    grav = 0
    vsp = 0
    grabbing = 1
    sprite_index = spr_grabbiehand_catch
    other.image_index = 0
    obj_player.sprite_index = spr_player_catched
    other.state = states.bump
    other.x = x
    other.y = y
    other.vsp = 0
    other.hsp = 0
    scr_soundeffect(sfx_enemyprojectile)
	grabbed = true;
}
