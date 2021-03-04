if (state == 99)
{
    var display = ((intensity / 25) * 100)
    var color_1 = c_blue
    var color_2 = c_red
    if (intensity < 25)
    {
        color_1 = c_blue
        color_2 = c_red
    }
    else
    {
        color_1 = c_white
        color_2 = c_white
    }
    draw_healthbar((x + 32), (y - 64), (x + 16), y, display, c_black, color_1, color_2, 3, 1, 1)
    draw_sprite(spr_targetguide, -1, (lengthdir_x(50, angle) + x), (lengthdir_y(50, angle) + y))
    draw_sprite(spr_targetguide, -1, (lengthdir_x(100, angle) + x), (lengthdir_y(100, angle) + y))
    draw_sprite(spr_targetguide, -1, (lengthdir_x(150, angle) + x), (lengthdir_y(150, angle) + y))
    draw_sprite(spr_targetreticle, -1, targetx, targety)
    draw_sprite_ext(sprite_index, image_index, xdraw, ydraw, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    if flash
    {
        shader_set(shd_hit)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        shader_reset()
    }
}
else
{
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    if flash
    {
        shader_set(shd_hit)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        shader_reset()
    }
}


