var player = obj_player1
if global.coop = true
player = instance_nearest(x,y,obj_player)

initialvsp = random_range(-5, -10)
initialhsp = (sign((x - player.x)) * random_range(5, 10))
if (x != player.x)
    image_xscale = (-sign((x - player.x)))
vsp = initialvsp
hsp = initialhsp
grav = 0.3
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






