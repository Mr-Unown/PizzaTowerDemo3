dropcoin = 0
shake = 0
shakebuffer = 2.5
blowdirection = 0
blowintensity = 1
scarebuffer = 0
parry = 0
markedfordeath = 0
markedfordeathbuffer = 50
deathbuffer = 100
playerxscale = obj_player1.xscale
dying = false
//Death Sprite
var player = obj_player1
if global.coop = true
player = instance_nearest(x,y,obj_player)
initialvsp = random_range(-5, -10)
initialhsp = (sign((x - player.x)) * random_range(5, 10))
//Stored Stuff
frozenstate = 0;
frozenspriteindex = spr_player_idle;
frozenimageindex = 0;
frozenimagespeed = 0.35;
frozenmovespeed = 0;
frozengrav = 0.35;
frozenhsp = 0;
frozenvsp = 0;
