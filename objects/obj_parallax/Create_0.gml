/// @description Initialize Required Variables

//Remove Duplicate obj_parallax if any
if (instance_number(obj_parallax) > 1) {
	var _first = instance_find(obj_parallax, 0);
	if (id != _first) {
		instance_destroy(); 
		exit; 
	}
}

//Initialize array
var i = 5;
repeat (5) {
	layers[i--] = noone;
}
layerNum = 0;

global.ScrollOffset = 0;


scroll1 = 0