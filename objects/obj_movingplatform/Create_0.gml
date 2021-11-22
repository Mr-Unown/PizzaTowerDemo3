depth = 5;
hsp = 0;
vsp = 0;

movespeed = 4;
stopped = false;
stopid = noone;
//Smooth in and Out
stop = 0;
stop_max = 4;
stop_acc = 0.5;
stop_decc = 0.5;
//_direction = 0;
stored_direction = _direction;
var i = 0;
objects[i++] = obj_player;
objects[i++] = obj_baddie;
objects[i++] = obj_dashpad;
objects[i++] = obj_throwableparent;
objects[i++] = obj_goop;
objects[i++] = obj_pizzaslice;
objects[i++] = obj_shotgun;
objects[i++] = obj_pizzacoin;
objects[i++] = obj_pizzagoblinbomb;
objects[i++] = obj_banditochicken_dynamite;
objects[i++] = obj_vigidynamite;
objects[i++] = obj_noisekickbomb;