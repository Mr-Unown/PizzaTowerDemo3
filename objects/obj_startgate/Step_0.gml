targetDoor = "A"
if (obj_player1.spotlight == 1)
{
    player = obj_player1
    player2 = obj_player2
}
else
{
    player = obj_player2
    player2 = obj_player1
}

if place_meeting(x, y, obj_player) && level = "snickchallenge"
    image_speed = 0.12
else
{
    image_speed = 0
    image_index = 0
}
if level = "snickchallenge"
{
	sprite_index = spr_snickchallengecomputer
}
/*
ini_open("playerData_"+global.savefile+".ini")
global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0)
global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0)
global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0)
if (global.SAGEsrank == 0)
{
    if (global.entrancerank == "s" && global.medievalrank == "s" && global.ruinrank == "s" && global.dungeonrank == "s" && global.chateaurank == "s" && global.strongcoldrank == "s" && global.desertrank == "s" && global.mansionrank == "s" && global.factoryrank == "s" && global.sewerrank == "s" && global.freezerrank == "s" && global.golfrank == "s")
        ini_write_string("SAGE2019", "srank", 1)
}
global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0)
if (global.SAGEsnicksrank == 0)
{
    if (global.snickchallengerank == "s")
        ini_write_string("SAGE2019", "snicksrank", 1)
}
global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0)
global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0)
if (global.SAGEsecret == 0)
{
    if (global.entrancesecret == 6 && global.medievalsecret == 6 && global.ruinsecret == 6 && global.dungeonsecret == 6 && global.chateausecret == 6 && global.strongcoldsecret == 6 && global.desertsecret == 7 && global.mansionsecret == 4 && global.factorysecret == 1 && global.sewersecret == 1 && global.freezersecret == 1 && global.golfsecret == 1)
        ini_write_string("SAGE2019", "secret", 1)
}
global.SAGEknight = ini_read_string("SAGE2019", "knight", 0)
global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0)
if (global.SAGEtoppin == 0)
{
    if (global.entrancetoppin1 == 1 && global.entrancetoppin2 == 1 && global.entrancetoppin3 == 1 && global.entrancetoppin4 == 1 && global.entrancetoppin5 == 1 && global.medievaltoppin1 == 1 && global.medievaltoppin2 == 1 && global.medievaltoppin3 == 1 && global.medievaltoppin4 == 1 && global.medievaltoppin5 == 1 && global.ruintoppin1 == 1 && global.ruintoppin2 == 1 && global.ruintoppin3 == 1 && global.ruintoppin4 == 1 && global.ruintoppin5 == 1 && global.dungeontoppin1 == 1 && global.dungeontoppin2 == 1 && global.dungeontoppin3 == 1 && global.dungeontoppin4 == 1 && global.dungeontoppin5 == 1 && global.chateautoppin1 == 1 && global.chateautoppin2 == 1 && global.chateautoppin3 == 1 && global.chateautoppin4 == 1 && global.chateautoppin5 == 1 && global.strongcoldtoppin1 == 1 && global.strongcoldtoppin2 == 1 && global.strongcoldtoppin3 == 1 && global.strongcoldtoppin4 == 1 && global.strongcoldtoppin5 == 1 && global.deserttoppin1 == 1 && global.deserttoppin2 == 1 && global.deserttoppin3 == 1 && global.deserttoppin4 == 1 && global.deserttoppin5 == 1 && global.mansiontoppin1 == 1 && global.mansiontoppin2 == 1 && global.mansiontoppin3 == 1 && global.mansiontoppin4 == 1 && global.mansiontoppin5 == 1 && global.factorytoppin1 == 1 && global.factorytoppin2 == 1 && global.factorytoppin3 == 1 && global.factorytoppin4 == 1 && global.factorytoppin5 == 1 && global.sewertoppin1 == 1 && global.sewertoppin2 == 1 && global.sewertoppin3 == 1 && global.sewertoppin4 == 1 && global.sewertoppin5 == 1 && global.freezertoppin1 == 1 && global.freezertoppin2 == 1 && global.freezertoppin3 == 1 && global.freezertoppin4 == 1 && global.freezertoppin5 == 1 && global.golftoppin1 == 1 && global.golftoppin2 == 1 && global.golftoppin3 == 1 && global.golftoppin4 == 1 && global.golftoppin5 == 1)
        ini_write_string("SAGE2019", "toppin", 1)
}
global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0)
if (global.SAGEtreasure == 0)
{
    if (global.entrancetreasure == 1 && global.medievaltreasure == 1 && global.ruintreasure == 1 && global.dungeontreasure == 1 && global.chateautreasure == 1 && global.strongcoldtreasure == 1 && global.deserttreasure == 1 && global.mansiontreasure == 1 && global.factorytreasure == 1 && global.sewertreasure == 1 && global.freezertreasure == 1 && global.golftreasure == 1)
        ini_write_string("SAGE2019", "treasure", 1)
}
global.desertrank = ini_read_string("Ranks", "desert", "none")
global.mansionrank = ini_read_string("Ranks", "mansion", "none")
global.sewerrank = ini_read_string("Ranks", "sewer", "none")
global.factoryrank = ini_read_string("Ranks", "factory", "none")
global.freezerrank = ini_read_string("Ranks", "freezer", "none")
global.golfrank = ini_read_string("Ranks", "golf", "none")
ini_close()
*/
if (distance_to_object(player) < 50)
{
	 with (obj_tv)
     {
#region Level Names
		switch (other.level)
		{
			case "entrance": 
		            _message = "ENTRANCE"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "ancient": 
		            _message = "ANCIENT PASSAGEWAY"
		            showtext = 1
		            alarm[0] = 2
			break;			
			case "medieval": 
		            _message = "PIZZASCAPE"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "chateau": 
		            _message = "PIZZASCARE"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "ruin": 
		            _message = "THE ANCIENT CHEESE"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "sanctum": 
		            _message = "LA BURRATA TEMPLE"
		            showtext = 1
		            alarm[0] = 2
			break;			
			case "dungeon": 
		            _message = "BLOODSAUCE DUNGEON"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "strongcold": 
		            _message = "STRONGCOLD"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "snickchallenge": 
		            _message = "SNICK CHALLENGE"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "kungfu": 
		            _message = "WIP STREETS OF PIZZA"
		            showtext = 1
		            alarm[0] = 2
			break;		
			case "resto": 
		            _message = "WIP GOLF EATIN'"
		            showtext = 1
		            alarm[0] = 2
			break;	
			case "rooftop": 
		            _message = "WIP ROOF LEVEL"
		            showtext = 1
		            alarm[0] = 2
			break;				
			case "desert": 
		            _message = "OREGANO DESERT"
		            showtext = 1
		            alarm[0] = 2
			break;	
			case "factory": 
		            _message = "WIP FACTORY"
		            showtext = 1
		            alarm[0] = 2		
			break;		
			case "beach": 
		            _message = "PINEAPPLE BEACH"
		            showtext = 1
		            alarm[0] = 2
			break;
			case "pinball": 
		            _message = "EXTRATERRESTRIAL PINBALL"
		            showtext = 1
		            alarm[0] = 2
			break;
			default: 
					_message = "NONE"
					showtext = 1
					alarm[0] = 2
			break;
			
		}
#endregion
		old_message = _message					
	 }

}

//Draw Text
if place_meeting(x, y, player)
	drawtext = true
else
	drawtext = false
//Center Players
if global.coop = 0
{
	cplayerx = x
	cplayer1x = cplayerx
    cplayer2x = cplayerx
}
else
{
	cplayerx = x
	cplayer1x = cplayerx - 32
	cplayer2x = cplayerx + 32
}
//Lapping Time Attack baybe
ini_open("playerData_"+global.savefile+".ini")
if selected = true && ini_read_string("Ranks", string(level), "none") != "none" && has_selectedoption = false && string(level) != "snickchallenge"
{
	scr_getinput();
    if (key_right2)
    {
        selection = 1
        scr_soundeffect(sfx_step)
    }
	else if (-key_left2)
	{
        selection = 0
        scr_soundeffect(sfx_step)		
	}
	if key_jump2
	{
		has_selectedoption = true;
		scr_soundeffect(sfx_enemyprojectile)
	}
}
else if selected = true
	can_gotolevel = true


ini_close()

