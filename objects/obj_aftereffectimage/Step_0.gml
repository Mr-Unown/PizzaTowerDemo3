//Alarms
if frozen = true && global.freezeframe = false
{
	for (var i = 0; i < 2; i++)
	{
		alarm_set(i, frozenalarm[i]);
	}	
	frozen = false;
}

if vanish = 1 && global.freezeframe = false
{
	if gonealpha > 0
	gonealpha -= 0.5
	else if gonealpha <= 0
	instance_destroy()
}



