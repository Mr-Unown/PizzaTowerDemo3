function scr_getinput() {
	
	#region Setup Variables
	key_up = false
	key_up2 = false
	key_right = false
	key_right2 = false
	key_left = false
	key_left2 = false
	key_down = false
	key_down2 = false
	key_jump = false
	key_jump2 = false
	key_slap = false
	key_slap2 = false
	key_taunt = false
	key_taunt2 = false
	key_attack = false
	key_attack2 = false
	key_shoot = false
	key_shoot2 = false
	key_start = false
	key_escape = false
	stickpressed = false;
	#endregion
	
	//If Shell is open ignore all inputs
	if (global.shellactivate == true) {
		return false;
	}
	//Reset Binds
	if keyboard_check_pressed(vk_f1) {
		scr_resetinput(0);
		with (obj_tv)
	    {
			var _queued_message = choose("Looks like Player 1's controls have been reset!","Player 1's controls have been reset! Whatever that means...","Player 1 has resetted their controls.");
			scr_queue_message(_queued_message);
	        _message = "PLAYER 1 CONTROLS RESET";
			old_message = "PLAYER 1 CONTROLS RESET";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	}
	
	var _dvc = obj_inputAssigner.player_input_device[0]
    gamepad_set_axis_deadzone(_dvc, 0.4)
	
    key_up = (keyboard_check(global.key_up) || gamepad_button_check(_dvc, global.key_upC) || gamepad_axis_value(_dvc, gp_axislv) < 0)
    key_up2 = (keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(_dvc, global.key_upC) || (gamepad_axis_value(_dvc, gp_axislv) < -0.5 && stickpressed == 0))
    key_right = (keyboard_check(global.key_right) || gamepad_button_check(_dvc, global.key_rightC) || gamepad_axis_value(_dvc, gp_axislh) > 0)
    key_right2 = (keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(_dvc, global.key_rightC) || (gamepad_axis_value(_dvc, gp_axislh) > 0.5 && stickpressed == 0))
    key_left = (-(keyboard_check(global.key_left) || gamepad_button_check(_dvc, global.key_leftC) || gamepad_axis_value(_dvc, gp_axislh) < 0))
    key_left2 = (-(keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(_dvc, global.key_leftC) || (gamepad_axis_value(_dvc, gp_axislh) < -0.5 && stickpressed == 0)))
    key_down = (keyboard_check(global.key_down) || gamepad_button_check(_dvc, global.key_downC) || gamepad_axis_value(_dvc, gp_axislv) > 0)
    key_down2 = (keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(_dvc, global.key_downC) || (gamepad_axis_value(_dvc, gp_axislv) > 0.5 && stickpressed == 0))
    key_jump = (keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(_dvc, global.key_jumpC))
    key_jump2 = (keyboard_check(global.key_jump) || gamepad_button_check(_dvc, global.key_jumpC))
    key_slap = (keyboard_check(global.key_slap) || gamepad_button_check(_dvc, global.key_slapC))
    key_slap2 = (keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(_dvc, global.key_slapC))
    key_taunt = (keyboard_check(global.key_taunt) || gamepad_button_check(_dvc, global.key_tauntC))
    key_taunt2 = (keyboard_check_pressed(global.key_taunt) || gamepad_button_check_pressed(_dvc, global.key_tauntC))
    key_attack = (keyboard_check(global.key_attack) || gamepad_button_check(_dvc, global.key_attackC) || gamepad_button_check(_dvc, gp_shoulderrb))
    key_attack2 = (keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(_dvc, global.key_attackC) || gamepad_button_check_pressed(_dvc, gp_shoulderrb))
    key_shoot = (keyboard_check(global.key_shoot) || gamepad_button_check(_dvc, global.key_shootC))
    key_shoot2 = (keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(_dvc, global.key_shootC) || gamepad_button_check_pressed(_dvc, gp_shoulderl))
    key_start = (keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(_dvc, global.key_startC))
    key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(_dvc, gp_select))
    if (gamepad_axis_value(_dvc, gp_axislh) > 0.5 || gamepad_axis_value(_dvc, gp_axislh) < -0.5 || gamepad_axis_value(_dvc, gp_axislv) > 0.5 || gamepad_axis_value(_dvc, gp_axislv) < -0.5)
        stickpressed = true
    else
        stickpressed = false
		
    #region Dynamic Deadzone
	//Sjumpprep
	if (object_index == obj_player1 && state == states.Sjumpprep)
    {
        var haxis = gamepad_axis_value(_dvc, gp_axislh)
        var vaxis = gamepad_axis_value(_dvc, gp_axislv)
        if (haxis != 0 || vaxis != 0)
        {
            var _dir = point_direction(0, 0, haxis, vaxis)
            var _deadzone = 5
            if (_dir >= _deadzone && _dir <= (180 - _deadzone))
                key_up = true
        }
    }
	#endregion
	
    return true;
}

function scr_getinput2() {
	
	#region Setup Variables
	key_up = false
	key_up2 = false
	key_right = false
	key_right2 = false
	key_left = false
	key_left2 = false
	key_down = false
	key_down2 = false
	key_jump = false
	key_jump2 = false
	key_slap = false
	key_slap2 = false
	key_taunt = false
	key_taunt2 = false
	key_attack = false
	key_attack2 = false
	key_shoot = false
	key_shoot2 = false
	key_start = false
	key_escape = false
	stickpressed = false;
	#endregion
	
	//If Shell is open ignore all inputs
	if (global.shellactivate == true) return false;
	
	//Reset Binds
	if keyboard_check_pressed(vk_f2) {
		scr_resetinput(1);
		with (obj_tv)
	    {
			var _queued_message = choose("Looks like Player 2's controls have been reset!","Player 2's controls have been reset! Whatever that means...","Player 2 has resetted their controls.");
			scr_queue_message(_queued_message);
	        _message = "PLAYER 2 CONTROLS RESET";
			old_message = "PLAYER 2 CONTROLS RESET";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	}	
	
	var _dvc = obj_inputAssigner.player_input_device[1]
    gamepad_set_axis_deadzone(_dvc, 0.4)

    key_up = (keyboard_check(global.key_upN) || gamepad_button_check(_dvc, global.key_upCN) || gamepad_axis_value(_dvc, gp_axislv) < 0)
    key_up2 = (keyboard_check_pressed(global.key_upN) || gamepad_button_check_pressed(_dvc, global.key_upCN) || (gamepad_axis_value(_dvc, gp_axislv) < -0.5 && stickpressed == 0))
    key_right = (keyboard_check(global.key_rightN) || gamepad_button_check(_dvc, global.key_rightCN) || gamepad_axis_value(_dvc, gp_axislh) > 0)
    key_right2 = (keyboard_check_pressed(global.key_rightN) || gamepad_button_check_pressed(_dvc, global.key_rightCN) || (gamepad_axis_value(_dvc, gp_axislh) > 0.5 && stickpressed == 0))
    key_left = (-(keyboard_check(global.key_leftN) || gamepad_button_check(_dvc, global.key_leftCN) || gamepad_axis_value(_dvc, gp_axislh) < 0))
    key_left2 = (-(keyboard_check_pressed(global.key_leftN) || gamepad_button_check_pressed(_dvc, global.key_leftCN) || (gamepad_axis_value(_dvc, gp_axislh) < -0.5 && stickpressed == 0)))
    key_down = (keyboard_check(global.key_downN) || gamepad_button_check(_dvc, global.key_downCN) || gamepad_axis_value(_dvc, gp_axislv) > 0)
    key_down2 = (keyboard_check_pressed(global.key_downN) || gamepad_button_check_pressed(_dvc, global.key_downCN) || (gamepad_axis_value(_dvc, gp_axislv) > 0.5 && stickpressed == 0))
    key_jump = (keyboard_check_pressed(global.key_jumpN) || gamepad_button_check_pressed(_dvc, global.key_jumpCN))
    key_jump2 = (keyboard_check(global.key_jumpN) || gamepad_button_check(_dvc, global.key_jumpCN))
    key_slap = (keyboard_check(global.key_slapN) || gamepad_button_check(_dvc, global.key_slapCN))
    key_slap2 = (keyboard_check_pressed(global.key_slapN) || gamepad_button_check_pressed(_dvc, global.key_slapCN))
    key_taunt = (keyboard_check(global.key_tauntN) || gamepad_button_check(_dvc, global.key_tauntCN))
    key_taunt2 = (keyboard_check_pressed(global.key_tauntN) || gamepad_button_check_pressed(_dvc, global.key_tauntCN))
    key_attack = (keyboard_check(global.key_attackN) || gamepad_button_check(_dvc, global.key_attackCN) || gamepad_button_check(_dvc, gp_shoulderrb))
    key_attack2 = (keyboard_check_pressed(global.key_attackN) || gamepad_button_check_pressed(_dvc, global.key_attackCN) || gamepad_button_check_pressed(_dvc, gp_shoulderrb))
    key_shoot = (keyboard_check(global.key_shootN) || gamepad_button_check(_dvc, global.key_shootCN))
    key_shoot2 = (keyboard_check_pressed(global.key_shootN) || gamepad_button_check_pressed(_dvc, global.key_shootCN))
    key_start = (keyboard_check_pressed(global.key_startN) || gamepad_button_check_pressed(_dvc, global.key_startCN))
    key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(_dvc, gp_select))
    if (gamepad_axis_value(_dvc, gp_axislh) > 0.5 || gamepad_axis_value(_dvc, gp_axislh) < -0.5 || gamepad_axis_value(_dvc, gp_axislv) > 0.5 || gamepad_axis_value(_dvc, gp_axislv) < -0.5)
        stickpressed = true
    else
        stickpressed = false
		
    #region Dynamic Deadzone
	//Sjumpprep
	if (object_index == obj_player2 && state == states.Sjumpprep)
    {
        var haxis = gamepad_axis_value(_dvc, gp_axislh)
        var vaxis = gamepad_axis_value(_dvc, gp_axislv)
        if (haxis != 0 || vaxis != 0)
        {
            var _dir = point_direction(0, 0, haxis, vaxis)
            var _deadzone = 5
            if (_dir >= _deadzone && _dir <= (180 - _deadzone))
                key_up = true
        }
    }
	#endregion
	
    return true;
}

