/*draw_self()
//font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)
if place_meeting(x, y, player)
{
    if (global.level == "desert" || global.level == "desertnight")
    {
        draw_text(x, (y - 150), global.deserthighscore)
        draw_text(x, (y - 200), (string(global.desertsecret) + " OF 7 SECRET"))
        if (global.desertrank != "none")
        {
            if (global.desertrank == "s")
                draw_text(x, (y - 100), "S RANK")
            if (global.desertrank == "a")
                draw_text(x, (y - 100), "A RANK")
            if (global.desertrank == "b")
                draw_text(x, (y - 100), "B RANK")
            if (global.desertrank == "c")
                draw_text(x, (y - 100), "C RANK")
            if (global.desertrank == "d")
                draw_text(x, (y - 100), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
        if (global.deserttoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, 0, (x - 75), (y - 250))
        else
            draw_sprite(spr_pizzakinshroom_pause, 0, (x - 75), (y - 250))
        if (global.deserttoppin2 == 1)
            draw_sprite(spr_pizzakincheese, 0, (x - 35), (y - 250))
        else
            draw_sprite(spr_pizzakincheese_pause, 0, (x - 35), (y - 250))
        if (global.deserttoppin3 == 1)
            draw_sprite(spr_pizzakintomato, 0, x, (y - 250))
        else
            draw_sprite(spr_pizzakintomato_pause, 0, x, (y - 250))
        if (global.deserttoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, 0, (x + 35), (y - 250))
        else
            draw_sprite(spr_pizzakinsausage_pause, 0, (x + 35), (y - 250))
        if (global.deserttoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, 0, (x + 75), (y - 250))
        else
            draw_sprite(spr_pizzakinpineapple_pause, 0, (x + 75), (y - 250))
    }
    if (global.level == "mansion")
    {
        draw_text(x, (y - 150), global.mansionhighscore)
        draw_text(x, (y - 200), (string(global.mansionsecret) + " OF 4 SECRET"))
        if (global.mansionrank != "none")
        {
            if (global.mansionrank == "s")
                draw_text(x, (y - 100), "S RANK")
            if (global.mansionrank == "a")
                draw_text(x, (y - 100), "A RANK")
            if (global.mansionrank == "b")
                draw_text(x, (y - 100), "B RANK")
            if (global.mansionrank == "c")
                draw_text(x, (y - 100), "C RANK")
            if (global.mansionrank == "d")
                draw_text(x, (y - 100), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
        if (global.mansiontoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, 0, (x - 75), (y - 250))
        else
            draw_sprite(spr_pizzakinshroom_pause, 0, (x - 75), (y - 250))
        if (global.mansiontoppin2 == 1)
            draw_sprite(spr_pizzakincheese, 0, (x - 35), (y - 250))
        else
            draw_sprite(spr_pizzakincheese_pause, 0, (x - 35), (y - 250))
        if (global.mansiontoppin3 == 1)
            draw_sprite(spr_pizzakintomato, 0, x, (y - 250))
        else
            draw_sprite(spr_pizzakintomato_pause, 0, x, (y - 250))
        if (global.mansiontoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, 0, (x + 35), (y - 250))
        else
            draw_sprite(spr_pizzakinsausage_pause, 0, (x + 35), (y - 250))
        if (global.mansiontoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, 0, (x + 75), (y - 250))
        else
            draw_sprite(spr_pizzakinpineapple_pause, 0, (x + 75), (y - 250))
    }
    if (global.level == "factory")
    {
        draw_text(x, (y - 150), global.factoryhighscore)
        draw_text(x, (y - 200), (string(global.factorysecret) + " OF 1 SECRET"))
        if (global.factoryrank != "none")
        {
            if (global.factoryrank == "s")
                draw_text(x, (y - 100), "S RANK")
            if (global.factoryrank == "a")
                draw_text(x, (y - 100), "A RANK")
            if (global.factoryrank == "b")
                draw_text(x, (y - 100), "B RANK")
            if (global.factoryrank == "c")
                draw_text(x, (y - 100), "C RANK")
            if (global.factoryrank == "d")
                draw_text(x, (y - 100), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
        if (global.factorytoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, 0, (x - 75), (y - 250))
        else
            draw_sprite(spr_pizzakinshroom_pause, 0, (x - 75), (y - 250))
        if (global.factorytoppin2 == 1)
            draw_sprite(spr_pizzakincheese, 0, (x - 35), (y - 250))
        else
            draw_sprite(spr_pizzakincheese_pause, 0, (x - 35), (y - 250))
        if (global.factorytoppin3 == 1)
            draw_sprite(spr_pizzakintomato, 0, x, (y - 250))
        else
            draw_sprite(spr_pizzakintomato_pause, 0, x, (y - 250))
        if (global.factorytoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, 0, (x + 35), (y - 250))
        else
            draw_sprite(spr_pizzakinsausage_pause, 0, (x + 35), (y - 250))
        if (global.factorytoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, 0, (x + 75), (y - 250))
        else
            draw_sprite(spr_pizzakinpineapple_pause, 0, (x + 75), (y - 250))
    }
    if (global.level == "sewer")
    {
        draw_text(x, (y - 150), global.sewerhighscore)
        draw_text(x, (y - 200), (string(global.sewersecret) + " OF 1 SECRET"))
        if (global.sewerrank != "none")
        {
            if (global.sewerrank == "s")
                draw_text(x, (y - 100), "S RANK")
            if (global.sewerrank == "a")
                draw_text(x, (y - 100), "A RANK")
            if (global.sewerrank == "b")
                draw_text(x, (y - 100), "B RANK")
            if (global.sewerrank == "c")
                draw_text(x, (y - 100), "C RANK")
            if (global.sewerrank == "d")
                draw_text(x, (y - 100), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
        if (global.sewertoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, 0, (x - 75), (y - 250))
        else
            draw_sprite(spr_pizzakinshroom_pause, 0, (x - 75), (y - 250))
        if (global.sewertoppin2 == 1)
            draw_sprite(spr_pizzakincheese, 0, (x - 35), (y - 250))
        else
            draw_sprite(spr_pizzakincheese_pause, 0, (x - 35), (y - 250))
        if (global.sewertoppin3 == 1)
            draw_sprite(spr_pizzakintomato, 0, x, (y - 250))
        else
            draw_sprite(spr_pizzakintomato_pause, 0, x, (y - 250))
        if (global.sewertoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, 0, (x + 35), (y - 250))
        else
            draw_sprite(spr_pizzakinsausage_pause, 0, (x + 35), (y - 250))
        if (global.sewertoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, 0, (x + 75), (y - 250))
        else
            draw_sprite(spr_pizzakinpineapple_pause, 0, (x + 75), (y - 250))
    }
    if (global.level == "freezer")
    {
        draw_text(x, (y - 150), global.freezerhighscore)
        draw_text(x, (y - 200), (string(global.freezersecret) + " OF 1 SECRET"))
        if (global.freezerrank != "none")
        {
            if (global.freezerrank == "s")
                draw_text(x, (y - 100), "S RANK")
            if (global.freezerrank == "a")
                draw_text(x, (y - 100), "A RANK")
            if (global.freezerrank == "b")
                draw_text(x, (y - 100), "B RANK")
            if (global.freezerrank == "c")
                draw_text(x, (y - 100), "C RANK")
            if (global.freezerrank == "d")
                draw_text(x, (y - 100), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
        if (global.freezertoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, 0, (x - 75), (y - 250))
        else
            draw_sprite(spr_pizzakinshroom_pause, 0, (x - 75), (y - 250))
        if (global.freezertoppin2 == 1)
            draw_sprite(spr_pizzakincheese, 0, (x - 35), (y - 250))
        else
            draw_sprite(spr_pizzakincheese_pause, 0, (x - 35), (y - 250))
        if (global.freezertoppin3 == 1)
            draw_sprite(spr_pizzakintomato, 0, x, (y - 250))
        else
            draw_sprite(spr_pizzakintomato_pause, 0, x, (y - 250))
        if (global.freezertoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, 0, (x + 35), (y - 250))
        else
            draw_sprite(spr_pizzakinsausage_pause, 0, (x + 35), (y - 250))
        if (global.freezertoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, 0, (x + 75), (y - 250))
        else
            draw_sprite(spr_pizzakinpineapple_pause, 0, (x + 75), (y - 250))
    }
    if (global.level == "golf")
    {
        draw_text(x, (y - 150), global.golfhighscore)
        draw_text(x, (y - 200), (string(global.golfsecret) + " OF 1 SECRET"))
        if (global.golfrank != "none")
        {
            if (global.golfrank == "s")
                draw_text(x, (y - 100), "S RANK")
            if (global.golfrank == "a")
                draw_text(x, (y - 100), "A RANK")
            if (global.golfrank == "b")
                draw_text(x, (y - 100), "B RANK")
            if (global.golfrank == "c")
                draw_text(x, (y - 100), "C RANK")
            if (global.golfrank == "d")
                draw_text(x, (y - 100), "D RANK")
        }
        else
            draw_text(x, (y - 100), "NO RANK")
        if (global.golftoppin1 == 1)
            draw_sprite(spr_pizzakinshroom, 0, (x - 75), (y - 250))
        else
            draw_sprite(spr_pizzakinshroom_pause, 0, (x - 75), (y - 250))
        if (global.golftoppin2 == 1)
            draw_sprite(spr_pizzakincheese, 0, (x - 35), (y - 250))
        else
            draw_sprite(spr_pizzakincheese_pause, 0, (x - 35), (y - 250))
        if (global.golftoppin3 == 1)
            draw_sprite(spr_pizzakintomato, 0, x, (y - 250))
        else
            draw_sprite(spr_pizzakintomato_pause, 0, x, (y - 250))
        if (global.golftoppin4 == 1)
            draw_sprite(spr_pizzakinsausage, 0, (x + 35), (y - 250))
        else
            draw_sprite(spr_pizzakinsausage_pause, 0, (x + 35), (y - 250))
        if (global.golftoppin5 == 1)
            draw_sprite(spr_pizzakinpineapple, 0, (x + 75), (y - 250))
        else
            draw_sprite(spr_pizzakinpineapple_pause, 0, (x + 75), (y - 250))
    }
}


