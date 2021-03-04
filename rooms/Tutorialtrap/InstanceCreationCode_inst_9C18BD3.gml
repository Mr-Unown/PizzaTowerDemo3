newvertical = true
targetRoom = PP_room1
targetDoor = "B"

obj_player1.collectscore = 0
obj_player2.collectscore = 0
global.collect = 0
global.collectN = 0
with (obj_tv)
{
	tvsprite = spr_tvknight	
    shownranks = 0	
    shownranka = 0
    shownrankb = 0
    shownrankc = 0
}
ds_list_clear(global.saveroom)
ds_list_clear(global.baddieroom)