//Panic Shake
panicshake = 0;
panicshakeacc = 0;
//Rank Bubble Surface
rankbubblesurface = noone;
oldranklol = "FUCK"
bubblescale = 0
depth = -9999
//Camera Positions
Cam_x = 0;
Cam_y = 0;
//Stinky Thing
oldfacesprite = spr_null
//global.startgate
//Rank
global.currentrank = "D"
global.startgate = noone;
startdistanced = 0;
startdistance = 0;
startgateoffsetx = 0;
startgateoffsety = 0;
//Test
game_width = 960;
game_height = 540;
//Shaders
greyscalefade = 0;
//Frozenarray
frozenalarm[0] = -1
frozenalarm[1] = -1
frozenalarm[2] = -1
frozenalarm[3] = -1
frozen = false;

//Copied Surface
d3application_surface = noone;
final_application_surface = noone;
//Number
_image_index = 0;
_image_speed = 0;
//Change Colors only when needed
collected = "0";
colors[0] = choose(0,1,2,3)
colors[1] = choose(0,1,2,3)
colors[2] = choose(0,1,2,3)
newhudyoffset = 0;
//Shake
shakemag = 0;
global.levelname = "none"
global.tutorialtrap = 0
collided = false
n = 0
global.switchblock = 0
image_speed = 0.35
alarm[1] = -1
global.seconds = 59
global.minutes = 0

global.bonusmiliseconds = 0;
global.bonusseconds = 0;
global.bonusminutes = 0;
global.bonushour = 0;
global.bonustimer = false;
global.miniboss = 0
angle = 0
angledir = 1
frame = 0
global.pizza = 0
global.pizzameter = 0
global.pillarhunger = 4000
basement = 0
shake_mag = 0
shake_mag_acc = 0
zoom = 0
chargecamera = 0
alpha = 1
zoomh = 540
zoomw = 960
global.hitstunalarm = 0;
global.panicbg = true;
ini_open("saveData.ini")
global.newhud = ini_read_real("Option", "newhud", 0);
global.hitstunenabled = ini_read_real("Option", "hitstun", 1);
global.screenmelt = ini_read_real("Option", "panicbg", 1)
global.mastervolume = ini_read_real("Option", "mastervolume", 1)
global.musicvolume = ini_read_real("Option", "musicvolume", 1)
global.soundeffectsvolume = ini_read_real("Option", "soundeffectsvolume", 1)
global.defaulttime = ini_read_real("Option", "secrethitstuntimer", 70)
global.quipsfrequency = ini_read_real("Option", "quips", 0)
global.heatmeteroption = ini_read_real("Option", "heat", 0)
ini_close()
audio_master_gain(global.mastervolume)
global.maxwave = 0
global.wave = 0
ded = 0
player = obj_player1
player2 = obj_player2
shoving = 0
bang = 0
image_speed = 0.35
p2pdistance = 0
p2pdistancex = 0
p2pdistanced = 0
p2pdistancey = 0
golf = 0
zoom = 0
targetzoom1 = 960
targetzoom2 = 540
target_x = obj_player1.x
target_y = obj_player1.y
golfdistance = 0
golfdistanced = 0
golfdistancey = 0
golfdistancex = 0
target_xold = obj_player1.x
target_yold = obj_player1.y
maxangle = 2.5
debugfreezeframe = 0
debugmaxfreezeframe = 0
global.freezeframecounter = 0
target = obj_player
spr_heatpalette = spr_heatmeter_palette
//Backdrop
backdrop = spr_backdrop_pinball
//temperature
global.temperature = 0
global.temperature_spd = 0.01
global.temp_thresholdnumber = 5
global.tempenabled = false

