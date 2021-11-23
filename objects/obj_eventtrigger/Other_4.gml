if (ds_list_find_index(flags.saveroom, id) != -1)
{
    if flags.do_save != false
    {
		output();
		activated = true;
    }
}