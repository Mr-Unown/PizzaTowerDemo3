if (global.panic == 0)
{
    if (floor(image_index) == 3 && madecheese == 0)
    {
        instance_create((x + 32), (y + 64), obj_cheeseblob)
        madecheese = 1
        if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
            scr_soundeffect(sfx_enemyprojectile)
    }
    if (floor(image_index) == (image_number - 1))
        madecheese = 0
}
else
{
    if (floor(image_index) == 3 && madecheese == 0)
    {
        repeat (4)
            instance_create((x + 32), (y + 64), obj_slimedebris)
        madecheese = 1
        if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
            scr_soundeffect(sfx_step)
    }
    if (floor(image_index) == (image_number - 1))
        madecheese = 0
}


