/// @description Create Default Trigger Stuff
inst_num = instance_number(obj_eventtrigger);
condition = noone;
output = noone;

default_condition = function() {
	return place_meeting(x, y, obj_player);			
}
default_output = function() {		
}
//Default
condition = default_condition;
output = default_output;