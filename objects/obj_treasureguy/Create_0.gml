scr_enemycreate()
grav = 0.5
hsp = 0
vsp = 0
movespeed = 0
state = enemystates.enemyidle
stunned = 0
activated = false;
trailbuffer = 6;
//Inventory
content_arr[0] = obj_pizzaslice;
content_arr[1] = obj_pizzaslice;
content_arr[2] = obj_pizzaslice;
//Treasure Port
threshold_x = 400;
threshold_y = 96;
targetplayer = noone;
running = 0;
scared_max = 50;
runmovespeed = 0;
runmovespeed_max = 8;
accel = 0.25;
jumped = 0;
idle_threshold = 800;

alarm[0] = 150
roaming = 1
collectdrop = 5
flying = 0
straightthrow = 0
cigar = 0
cigarcreate = 0
stomped = 0
shot = 0
thrown = 0
reset = 0
flash = 0
landspr = spr_slimebounce
idlespr = spr_treasureguy_idle
fallspr = spr_slimefall
stunfallspr = spr_treasureguy_stun
walkspr = spr_treasureguy_idle
turnspr = spr_slimeturn
recoveryspr = spr_treasureguy_stun
grabbedspr = spr_treasureguy_stun
scaredspr = spr_treasureguy_escapestart
hp = 1
slapped = 0
grounded = 1
birdcreated = 0
boundbox = 0
spr_dead = spr_treasureguy_dead
important = 0
heavy = 0
depth = 0
paletteselect = 0
spr_palette = spr_null
grabbedby = 0


