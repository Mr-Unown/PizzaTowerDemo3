customer_x = 144
customer_y = 144
player_standx = 240
content = obj_pizzakincheese
spr_idle = spr_gnome2_idle
spr_happy = spr_gnome2_happy
gnome_id = 1
xscale = 1
image_speed = 0
depth = 99
image_index = 0
if (collision_line(x, y, x, (y + 400), obj_solid, false, true) != -4)
{
    while (!place_meeting(x, (y + 1), obj_solid))
        y++
}
