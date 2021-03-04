switch color
{
    case 0: //White
        draw_set_color(make_colour_rgb(255, 255, 255))
        break
    case 1: //Red
        draw_set_color(make_colour_rgb(248, 0, 0))
        break
    case 2: //Green
        draw_set_color(make_colour_rgb(0, 248, 0))
        break
    case 3: //Blue
        draw_set_color(make_colour_rgb(0, 0, 248))
        break
    case 4: //Black
        draw_set_color(make_colour_rgb(0, 0, 0))
        break
}

draw_set_font(smallnumber)
draw_set_halign(fa_center)
shader_reset()
if flash
{
    shader_set(shd_hit)
    draw_text(x, y, number)
    shader_reset()
}
else
    draw_text(x, y, number)

