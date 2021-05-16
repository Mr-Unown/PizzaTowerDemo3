mach2 = 0
jumpAnim = 1
dashAnim = 1
landAnim = 0
moveAnim = 1
stopAnim = 1
crouchslideAnim = 1
crouchAnim = 1
machhitAnim = 0
hsp = 0
if (blackblend < 255)
    blackblend += 5
image_blend = make_colour_hsv(0, 0,blackblend)
if (floor(image_index) == (image_number - 1))
{
    start_running = 1
    movespeed = 0
    state = 0
    image_alpha = 1
    blackblend = 0
    image_blend = make_colour_hsv(0, 0, 255)
}
if (sprite_index != spr_Timesup)
    sprite_index = spr_walkfront
global.pausecombotime = true
obj_tv.alarm[1] = 75	
image_speed = 0.35
