pal_swap_init_system(shd_pal_swapper);
obj_player1.collectscore = 0
obj_player2.collectscore = 0
global.collect = 0
global.collectN = 0
with (obj_tv)
{
	tvsprite = spr_tvdefault	
    shownranks = 0	
    shownranka = 0
    shownrankb = 0
    shownrankc = 0
}
ds_list_clear(global.saveroom)
ds_list_clear(global.baddieroom)