var messaged = ""
if global.timeattack = false
{
	if global.snickchallenge == false
	{
		messaged = "GOT THE SECRET TREASURE!!"
		if global.treasure == true
			ds_queue_enqueue(_meesage_queue,messaged);
		messaged = "HELD THE COMBO UNTIL THE END!"
		if global.comboended == false
			ds_queue_enqueue(_meesage_queue,messaged);
	}
	else
	{
		messaged = "RESCUED ALL 15 TOPPINS!!"		
		if global.toppintotal >= 15
			ds_queue_enqueue(_meesage_queue,messaged);
		messaged = "HELD THE COMBO UNTIL THE END!"			
		if global.comboended == false
			ds_queue_enqueue(_meesage_queue,messaged);
	}
}	
else
{
	messaged = "SURVIVED DEATH MODE!!"
	if global.deathmode == true
		ds_queue_enqueue(_meesage_queue,messaged);	
	messaged = "ESCAPED WITH ALL TOPPINS!"
	if global.toppintotal >= 5
		ds_queue_enqueue(_meesage_queue,messaged);		
}
_message = ds_queue_dequeue(_meesage_queue);
showtext = true;
timer = alarm2timer/2
alarm[2] = alarm2timer