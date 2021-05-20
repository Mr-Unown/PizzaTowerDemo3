var player = obj_player1
if global.coop = true
player = instance_nearest(x,y,obj_player)

initialvsp = 0;
initialhsp = 0;
vsp = random_range(0,-5) + initialvsp
hsp = (player.image_xscale * random_range(1, 5)) + initialhsp
grav = 0.4
alarm[0] = 5
cigar = 0
stomped = 0
drawx = x
drawy = y
canrotate = false
rotatedirection = choose(-1,0,1)
rotatevalue = irandom_range(-20,20)
spr_palette = noone
paletteselect = noone






