///@description tile_meeting_line(x1,y1,x2,y2,layer)
///@param x1
///@param y1
///@param x2
///@param y2
///@param layer

function tile_meeting_line(argument0,argument1,argument2,argument3,argument4){
#macro tile_size 32
#macro tile_bit_shift 5
var x1 = argument0
var y1 = argument1
var x2 = argument2
var y2 = argument3
var _layer = argument4

var angle = point_direction(x1,y1,x2,y2);
var distance = point_distance(x1,y1,x2,y2);

var ang_sin = dsin(angle), ang_cos = dcos(angle), ang_tan = dtan(angle);

var hwall_x, hwall_shift_x, hwall_y, hwall_shift_y;
var vwall_x, vwall_shift_x, vwall_y, vwall_shift_y;

if ang_sin > 0 {
    hwall_y = (y1 div tile_size) * tile_size - 0.01;
    hwall_shift_y = -tile_size;
} else {
    hwall_y = (y1 div tile_size) * tile_size + tile_size;
    hwall_shift_y = tile_size;
}

hwall_x = x1 + (y1 - hwall_y) / ang_tan;
hwall_shift_x = -hwall_shift_y / ang_tan;
  
if ang_cos < 0 {
    vwall_x = (x1 div tile_size) * tile_size - 0.01;
    vwall_shift_x = -tile_size;
} else {
    vwall_x = (x1 div tile_size) * tile_size + tile_size;
    vwall_shift_x = tile_size;
}

vwall_y = y1 + (x1 - vwall_x) * ang_tan;
vwall_shift_y = -vwall_shift_x * ang_tan;
  

var dist_h = 0, dist_v = 0;
var wall_h = false, wall_v = false;

while dist_h < distance {
    dist_h = point_distance(x1, y1, hwall_x, hwall_y);
    var tx = clamp(hwall_x >> tile_bit_shift, 0, room_width - 1);
    var ty = clamp(hwall_y >> tile_bit_shift, 0, room_height - 1);
    //wall_h = global.collision[#tx, ty] == 'solid';
	wall_h = tile_meeting(tx,ty,_layer)
    if wall_h {
        break;
    }
  
    hwall_x += hwall_shift_x;
    hwall_y += hwall_shift_y;
}
  
while dist_v < distance {
    dist_v = point_distance(x1, y1, vwall_x, vwall_y);
    var tx = clamp(vwall_x >> tile_bit_shift, 0, room_width - 1);
    var ty = clamp(vwall_y >> tile_bit_shift, 0, room_height - 1);
	wall_v = tile_meeting(tx,ty,_layer);
  
    if wall_v {
        break;
    }
  
    vwall_x += vwall_shift_x;
    vwall_y += vwall_shift_y;
}
if wall_h || wall_v 
	return true;
else
	return false;
/*
if wall_h or wall_v {
    if dist_h < dist_v and wall_h {
        var hit_info;
        hit_info[2] = dist_h;
        hit_info[1] = hwall_y;
        hit_info[0] = hwall_x;
        return hit_info;
    }
    if dist_v < dist_h and wall_v {
        var hit_info;
        hit_info[2] = dist_v;
        hit_info[1] = vwall_y;
        hit_info[0] = vwall_x;
        return hit_info;
    }
} else {
    var hit_info;
    hit_info[2] = distance;
    hit_info[1] = y1 + lengthdir_y(distance, angle);
    hit_info[0] = x1 + lengthdir_x(distance, angle);
    return hit_info;
}
*/
}