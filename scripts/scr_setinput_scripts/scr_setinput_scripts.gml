function scr_initinput() 
{
	ini_open("saveData.ini")
	#region First Player
    global.key_up = ini_read_string("ControlsKeys", "up", vk_up);
    global.key_right = ini_read_string("ControlsKeys", "right", vk_right);
    global.key_left = ini_read_string("ControlsKeys", "left", vk_left);
    global.key_down = ini_read_string("ControlsKeys", "down", vk_down);
    global.key_jump = ini_read_string("ControlsKeys", "jump", ord("Z"));
    global.key_slap = ini_read_string("ControlsKeys", "slap", ord("X"));
    global.key_taunt = ini_read_string("ControlsKeys", "taunt", ord("C"));
    global.key_shoot = ini_read_string("ControlsKeys", "shoot", ord("A"));
    global.key_attack = ini_read_string("ControlsKeys", "attack", vk_shift);
    global.key_start = ini_read_string("ControlsKeys", "start", vk_escape);
    global.key_chainsaw = ini_read_string("ControlsKeys", "chainsaw", ord("V"));
	
	global.key_upC = ini_read_string("ControllerButton", "up", gp_padu);
    global.key_rightC = ini_read_string("ControllerButton", "right", gp_padr);
    global.key_leftC = ini_read_string("ControllerButton", "left", gp_padl);
    global.key_downC = ini_read_string("ControllerButton", "down", gp_padd);
    global.key_jumpC = ini_read_string("ControllerButton", "jump", gp_face1);
    global.key_slapC = ini_read_string("ControllerButton", "slap", gp_face3);
    global.key_tauntC = ini_read_string("ControllerButton", "taunt", gp_face4);
    global.key_shootC = ini_read_string("ControllerButton", "shoot", gp_face2);
    global.key_attackC = ini_read_string("ControllerButton", "attack", gp_shoulderr);
    global.key_startC = ini_read_string("ControllerButton", "start", gp_start);
    global.key_chainsawC = ini_read_string("ControllerButton", "chainsaw", gp_shoulderl);
	#endregion
	
	#region Second Player
	global.key_upN = ini_read_string("ControlsKeys2", "up", ord("W"));
    global.key_rightN = ini_read_string("ControlsKeys2", "right", ord("D"));
    global.key_leftN = ini_read_string("ControlsKeys2", "left", ord("A"));
    global.key_downN = ini_read_string("ControlsKeys2", "down", ord("S"));
    global.key_jumpN = ini_read_string("ControlsKeys2", "jump", ord("L"));
    global.key_slapN = ini_read_string("ControlsKeys2", "slap", ord("K"));
    global.key_tauntN = ini_read_string("ControlsKeys2", "taunt", ord("O"));
    global.key_shootN = ini_read_string("ControlsKeys2", "shoot", ord("I"));
    global.key_attackN = ini_read_string("ControlsKeys2", "attack", ord("J"));
    global.key_startN = ini_read_string("ControlsKeys2", "start", ord("P"));
    global.key_chainsawN = ini_read_string("ControlsKeys2", "chainsaw", ord("M"));
	
	global.key_upCN = ini_read_string("ControllerButton2", "up", gp_padu);
    global.key_rightCN = ini_read_string("ControllerButton2", "right", gp_padr);
    global.key_leftCN = ini_read_string("ControllerButton2", "left", gp_padl);
    global.key_downCN = ini_read_string("ControllerButton2", "down", gp_padd);
    global.key_jumpCN = ini_read_string("ControllerButton2", "jump", gp_face1);
    global.key_slapCN = ini_read_string("ControllerButton2", "slap", gp_face3);
    global.key_tauntCN = ini_read_string("ControllerButton2", "taunt", gp_face4);
    global.key_shootCN = ini_read_string("ControllerButton2", "shoot", gp_face2);
    global.key_attackCN = ini_read_string("ControllerButton2", "attack", gp_shoulderr);
    global.key_startCN = ini_read_string("ControllerButton2", "start", gp_start);
    global.key_chainsawCN = ini_read_string("ControllerButton2", "chainsaw", gp_shoulderl);
	#endregion
	ini_close()
}

function scr_resetinput(_player = 0) 
{
	ini_open("saveData.ini");
	switch _player
	{
		default:
		#region First Player
        ini_write_string("ControlsKeys", "up", vk_up);
        ini_write_string("ControlsKeys", "right", vk_right);
        ini_write_string("ControlsKeys", "left", vk_left);
        ini_write_string("ControlsKeys", "down", vk_down);
        ini_write_string("ControlsKeys", "jump", ord("Z"));
        ini_write_string("ControlsKeys", "slap", ord("X"));
        ini_write_string("ControlsKeys", "taunt", ord("C"));
        ini_write_string("ControlsKeys", "shoot", ord("A"));
        ini_write_string("ControlsKeys", "attack", vk_shift);
        ini_write_string("ControlsKeys", "start", vk_escape);
        ini_write_string("ControlsKeys", "chainsaw", ord("V"));
	
	    ini_write_string("ControllerButton", "up", gp_padu);
        ini_write_string("ControllerButton", "right", gp_padr);
        ini_write_string("ControllerButton", "left", gp_padl);
        ini_write_string("ControllerButton", "down", gp_padd);
        ini_write_string("ControllerButton", "jump", gp_face1);
        ini_write_string("ControllerButton", "slap", gp_face3);
        ini_write_string("ControllerButton", "taunt", gp_face4);
        ini_write_string("ControllerButton", "shoot", gp_face2);
        ini_write_string("ControllerButton", "attack", gp_shoulderr);
        ini_write_string("ControllerButton", "start", gp_start);
        ini_write_string("ControllerButton", "chainsaw", gp_shoulderl);
	#endregion
		break;
		
		case 1:
		#region Second Player
	    ini_write_string("ControlsKeys2", "up", ord("W"));
        ini_write_string("ControlsKeys2", "right", ord("D"));
        ini_write_string("ControlsKeys2", "left", ord("A"));
        ini_write_string("ControlsKeys2", "down", ord("S"));
        ini_write_string("ControlsKeys2", "jump", ord("L"));
        ini_write_string("ControlsKeys2", "slap", ord("K"));
        ini_write_string("ControlsKeys2", "taunt", ord("O"));
        ini_write_string("ControlsKeys2", "shoot", ord("I"));
        ini_write_string("ControlsKeys2", "attack", ord("J"));
        ini_write_string("ControlsKeys2", "start", ord("P"));
        ini_write_string("ControlsKeys2", "chainsaw", ord("M"));
	
	    ini_write_string("ControllerButton2", "up", gp_padu);
        ini_write_string("ControllerButton2", "right", gp_padr);
        ini_write_string("ControllerButton2", "left", gp_padl);
        ini_write_string("ControllerButton2", "down", gp_padd);
        ini_write_string("ControllerButton2", "jump", gp_face1);
        ini_write_string("ControllerButton2", "slap", gp_face3);
        ini_write_string("ControllerButton2", "taunt", gp_face4);
        ini_write_string("ControllerButton2", "shoot", gp_face2);
        ini_write_string("ControllerButton2", "attack", gp_shoulderr);
        ini_write_string("ControllerButton2", "start", gp_start);
        ini_write_string("ControllerButton2", "chainsaw", gp_shoulderl);
	#endregion
		break;
	}
	//Reload Inputs
	scr_initinput();
	
	ini_close();
}