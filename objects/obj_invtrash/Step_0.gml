//Bomb
if (bombreset > 0)
    bombreset -= 1
    
if (bombreset <= 0 && sprite_index == spr_invtrash_idle)
{
    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
        scr_soundeffect(sfx_enemyprojectile)
    image_index = 0
    sprite_index = spr_invtrash_throw
}
if (floor(image_index) == 2 && sprite_index == spr_invtrash_throw && bombreset <= 0)
{
    with (instance_create((x + (image_xscale * 6)), (y - 6), obj_cheeseball))
    {
        trash = 1
        image_xscale = other.image_xscale
        hsp = (other.image_xscale * 5)
        vsp = -4
    }
    bombreset = 100
}
if (sprite_index == spr_invtrash_throw && floor(image_index) == (image_number - 1))
    sprite_index = spr_invtrash_idle
scr_collide();

