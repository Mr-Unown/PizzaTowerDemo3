fadealpha = 0
AT = 0
//HAT = 0
fadein = 0
depth = -9999
#region End Combo
global.combotime = 0;
scr_soundeffect(sfx_comboend);
//Quips
if global.combo > 3
{
	var randomchance = irandom_range(0,100);
	if (randomchance < global.quipsfrequency)
	{
		scr_soundeffect(sfx_yipee,sfx_prettygood);
	}
}
//Shake
if obj_player1.storedscore > 0 || obj_player2.storedscore > 0
{
	if global.newhud = false
	{
		with obj_tv
		{
			shake = true;
			alarm[2] = 50;
		}
	}
	else
	{
		with obj_camera
		{
			shakemag = 7
		}
	}
}
//End it all
global.combo = 0
obj_player1.collectscore += obj_player1.storedscore;
obj_player2.collectscore += obj_player2.storedscore;	
obj_player1.storedscore = 0;
obj_player2.storedscore = 0;
#endregion

timestop = 0
xi = 500
_message = ""
timer = 0;
_meesage_queue = ds_queue_create();
yi = 600
showtext = 0
hurtpoints = 0
timepoints = 0
escapetimepoints = 0
treasurepoints = 0
alarm2timer = 150
alarm[1] = 75

