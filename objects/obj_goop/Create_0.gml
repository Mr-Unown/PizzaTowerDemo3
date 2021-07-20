depth = 1;
playerid = obj_player1;
pooid = id;
created = false;
//core if you see this I can explain...
chance = random_range(0,100);
if chance <= 97
paletteselect = choose(0,1); //Sauce or Cheese Goop
else
paletteselect = 2; //Chocolate Goop
image_xscale = choose(1,-1) ;
hsp = 0;
vsp = 0;
grounded = false
grav = 0.4;
roomid = room;
roomx = xstart;
roomy = ystart;
sprite = sprite_index;
image = image_index;
image_speed = 0.35;
frozen = false;
_direction = sign(hsp);
movespeed = abs(hsp);
maxspeed = 0;
stuck = false;