//Attempt at Pixel Perfect
//surface_resize(application_surface, 1920, 1080);
	
x = obj_player1.x
y = obj_player1.y
target_x = obj_player1.x
target_y = obj_player1.y
target_xold = obj_player1.x
target_yold = obj_player1.y
golfdistance = 0;
startgateoffsetx = 0;
startgateoffsety = 0;
with (obj_camera)
{
    shake_mag = 0
    shake_mag_acc = 0
}
if ((global.panic == 1 || global.snickchallenge == 1) && global.panicbg = true)
    scr_panicbg_init()
application_surface_draw_enable(true)
global.wave = (global.maxwave - (((global.minutes * 60) + global.seconds) * 60))

angle = 0
global.freezeframe = false;
global.freezeframetimer = clamp(global.freezeframetimer,50,185)
