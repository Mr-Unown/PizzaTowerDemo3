if room = strongcold_miniboss
{
ds_list_delete(global.follower,ds_list_find_index(global.follower,id));
global.combotime = 60
global.pausecombotime = true
obj_tv.alarm[1] = 75	
global.noisebombfollow = 0
ds_list_add(global.saveroom, id)
}
