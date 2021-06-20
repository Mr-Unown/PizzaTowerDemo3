pal_swap_set(spr_palette, paletteselect, 0)
var drawx = x
var drawy = y
if (shake == 1)
{
    drawx += random_range(-5, 5)
    drawy += random_range(-5, 5)
}
else
{
    drawx = x
    drawy = y
}
if (bandaged == 1)
{
    var bandagex = x
    var bandagey = y
    if (sprite_index == spr_bigcheese_walk)
    {
        if (floor(image_index) == 0)
        {
            bandagey = drawy
            bandagex = drawx
        }
        if (floor(image_index) == 1)
        {
            bandagey = drawy
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 2)
        {
            bandagey = (drawy + 1)
            bandagex = (drawx - 3)
        }
        if (floor(image_index) == 3)
        {
            bandagey = (drawy + 1)
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 4)
        {
            bandagey = (drawy + 2)
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 5)
        {
            bandagey = (drawy + 1)
            bandagex = (drawx - 1)
        }
        if (floor(image_index) == 6)
        {
            bandagey = (drawy + 1)
            bandagex = drawx
        }
        if (floor(image_index) == 7)
        {
            bandagey = drawy
            bandagex = (drawx + 2)
        }
        if (floor(image_index) == 8)
        {
            bandagey = (drawy - 1)
            bandagex = (drawx + 2)
        }
        if (floor(image_index) == 9)
        {
            bandagey = drawy
            bandagex = drawx
        }
    }
    else if (sprite_index == spr_bigcheese_scared)
    {
        if (floor(image_index) == 0)
        {
            bandagey = drawy
            bandagex = (drawx - 1)
        }
        if (floor(image_index) == 1)
        {
            bandagey = (drawy - 1)
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 2)
        {
            bandagey = (drawy - 1)
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 3)
        {
            bandagey = (drawy - 2)
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 4)
        {
            bandagey = (drawy - 2)
            bandagex = (drawx - 3)
        }
        if (floor(image_index) == 5)
        {
            bandagey = (drawy - 2)
            bandagex = (drawx - 3)
        }
        if (floor(image_index) == 6)
        {
            bandagey = (drawy - 2)
            bandagex = (drawx - 3)
        }
        if (floor(image_index) == 7)
        {
            bandagey = (drawy - 2)
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 8)
        {
            bandagey = (drawy - 1)
            bandagex = (drawx - 2)
        }
        if (floor(image_index) == 9)
        {
            bandagey = (drawy - 1)
            bandagex = (drawx - 2)
        }
    }
    else
    {
        bandagey = drawy
        bandagex = drawx
    }
    draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_enemybandaid, 0, bandagex, bandagey, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    if flash
    {
        shader_set(shd_hit)
        draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        draw_sprite_ext(spr_enemybandaid, 0, bandagex, bandagey, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        shader_reset()
    }
}
else
{
    draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    if flash
    {
        shader_set(shd_hit)
        draw_sprite_ext(sprite_index, image_index, drawx, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        shader_reset()
    }
}

shader_reset()
