//If Condition is correct then output and then die
if condition != noone && condition()
{
    if (ds_list_find_index(global.saveroom, id) == -1)
    {
		output();
        ds_list_add(global.saveroom, id)
        instance_destroy()
    }
}