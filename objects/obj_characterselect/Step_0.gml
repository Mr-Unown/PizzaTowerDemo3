if global.savefileselected = true {
image_speed = 0.35
if ((obj_player1.key_right2 || (-obj_player2.key_left2)) && selection == 0 && characterselected = false && readynow  == 0)
{
    selection = 1
    scr_soundeffect(sfx_step)
}
if (((-obj_player1.key_left2) || obj_player2.key_right2) && selection == 1 && characterselected = false && readynow  == 0)
{
    selection = 0
    scr_soundeffect(sfx_step)
}
//Select any Character
if obj_player1.key_jump && selection == 0 && characterselected = false {
	
	obj_noiseplaystyleselect.playerid = obj_player2;
    with (obj_player1)
    {
        character = "P";
        scr_characterspr()
    }
    with (obj_player2)
    {
        character = "N";
        scr_characterspr()
    }
	peppinoselected = true;
	if global.coop = true
		noiseselected = true;
		
	characterselected = true;	
}

if obj_player1.key_jump && selection == 1 && characterselected = false {


	obj_noiseplaystyleselect.playerid = obj_player1;
    with (obj_player1)
    {		
        character = "N";
        scr_characterspr()
    }
    with (obj_player2)
    {
        character = "P";
        scr_characterspr()
    }		
	noiseselected = true;
	if global.coop = true
		peppinoselected = true;
		
	characterselected = true;			
}
//Noiseselected
if characterselected = true {
	if (noiseselected = true) && obj_noiseplaystyleselect.visible = false {
		obj_noiseplaystyleselect.activated = true;
		obj_noiseplaystyleselect.visible = true;
		obj_noiseplaystyleselect.selected = false;
	}
	else if (noiseselected = true) && obj_noiseplaystyleselect.selected = true {
		done = true;
	}
	else if noiseselected != true && peppinoselected = true
		done = true;
	
}
if (obj_peppinoselect.sprite_index != spr_peppinoselected) && peppinoselected = true && done = true
{
    readynow  = 1
    scr_soundeffect(sfx_collecttoppin)
    obj_peppinoselect.sprite_index = spr_peppinoselected
    obj_peppinoselect.image_index = 0
    alarm[0] = 100
}

if (obj_noiseselect.sprite_index != spr_noiseselected) && noiseselected = true  && done = true
{
    readynow  = 1
    scr_soundeffect(sfx_collecttoppin)
    obj_noiseselect.sprite_index = spr_noiseselected
    obj_noiseselect.image_index = 0
    alarm[0] = 100
}

}
