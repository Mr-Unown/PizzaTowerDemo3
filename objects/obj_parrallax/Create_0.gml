if (instance_number(obj_parrallax) > 1) {
	var first = instance_find(obj_parrallax, 0);
	if (id != first) { instance_destroy(); exit; }
}

bg = 1205
global.scrolloffset = 0
scrolloffset = global.scrolloffset
randomscrolloffset1 = 0
randomscrolloffset2 = 0
randomscrolloffset3 = 0
layer_x("Backgrounds_sky", 0)
layer_y("Backgrounds_sky", 0)
layer_x("Backgrounds_sky2", 0)
layer_y("Backgrounds_sky2", 0)
layer_x("Backgrounds_scroll", 0)
layer_y("Backgrounds_scroll", 0)
groundy = 0
ground2y = 0
longy = 0
longy2 = 0
x_shift_1 = 0
y_shift_1 = 0
x_shift_2 = 0
y_shift_2 = 0
x_shift_3 = 0
y_shift_3 = 0
back1 = 15
back2 = 15
back3 = 15
back4 = 15
back5 = 15
back6 = 15
back7 = 15
back8 = 15
back9 = 15
back10 = 15
back11 = 15
back12 = 15
back14 = 15
back15 = 15
back16 = 15