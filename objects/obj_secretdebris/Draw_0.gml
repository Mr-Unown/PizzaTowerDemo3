//To Do: Rewrite Secret Debris to cause less lag
if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
{
    if (!surface_exists(s))
        s = surface_create(sprite_width, sprite_height)
    surface_set_target(s)
    draw_set_blend_mode(0)
    draw_sprite_ext(sprite_index, image_index, sprite_xoffset, sprite_yoffset, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
  	gpu_set_blendmode_ext(9,6)
    if (mode = 1)
    {
        draw_tile(tile_dataset, tile_dataid, 0, 0, 0)
        draw_tile(tile_dataset, tile_dataid, 0, 32, 0)
        draw_tile(tile_dataset, tile_dataid, 0, 0, 32)
        draw_tile(tile_dataset, tile_dataid, 0, 32, 32)
        draw_tile(tile_dataset, tile_dataid, 0, -32, 0)
        draw_tile(tile_dataset, tile_dataid, 0, 0, -32)
        draw_tile(tile_dataset, tile_dataid, 0, -32, -32)
        draw_tile(tile_dataset, tile_dataid, 0, 32, -32)
        draw_tile(tile_dataset, tile_dataid, 0, -32, 32)
    }
    else
        draw_sprite_tiled(blendsprite, 0, 0, 0)
    draw_set_blend_mode(0)
    surface_reset_target()
    draw_surface(s, (x - sprite_xoffset), (y - sprite_yoffset))
}


