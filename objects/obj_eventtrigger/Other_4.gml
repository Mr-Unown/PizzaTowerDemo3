if (ds_list_find_index(flags.saveroom, id) != -1)
{
    if flags.do_once_per_save == true
		activated = true;
    if flags.do_save != false && activated != true
    {
		output();
		activated = true;
    }
}