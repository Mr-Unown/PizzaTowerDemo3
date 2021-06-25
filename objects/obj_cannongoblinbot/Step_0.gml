//Bomb
if (bombreset > 0)
    bombreset -= 1
    
if (bombreset <= 0 && sprite_index == spr_cannongoblinbot)
{
    if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
        scr_soundeffect(8)
    image_index = 0
    sprite_index = spr_cannongoblinbot_shoot
}
if (floor(image_index) == 0 && sprite_index == spr_cannongoblinbot_shoot && bombreset <= 0)
{
    with (instance_create((x + (image_xscale * 16)), y, obj_cannongoblinbomb))
    {
		hsp = (other.image_xscale * 8)
		image_xscale = other.image_xscale
		grav = 0
    }
    bombreset = 100
}
if (sprite_index == spr_cannongoblinbot_shoot && floor(image_index) == (image_number - 1))
    sprite_index = spr_cannongoblinbot


