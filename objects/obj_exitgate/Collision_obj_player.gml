if (global.panic == 1)
{
    with (obj_player)
    {
        if (grounded /*&& x > (other.x + 32) && x < (other.x + 160)*/ && key_up && (state == 0 || state == 62 || state == 63 || state == 83))
        {
            if (global.collect >= global.srank)
                global.rank = "s"
            else if (global.collect > global.arank)
                global.rank = "a"
            else if (global.collect > global.brank)
                global.rank = "b"
            else if (global.collect > global.crank)
                global.rank = "c"
            else
                global.rank = "d"
            ini_open("saveData.ini")
            if (room == steamy_1)
            {
                ini_open("saveData.ini")
                if (global.rank == "s")
                    ini_write_string("Ranks", "steamy", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "steamy", "none"))
                    ini_write_string("Ranks", "steamy", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "steamy", "none") && "a" != ini_read_string("Ranks", "steamy", "none"))
                    ini_write_string("Ranks", "steamy", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "steamy", "none") && "a" != ini_read_string("Ranks", "steamy", "none") && "b" != ini_read_string("Ranks", "steamy", "none"))
                    ini_write_string("Ranks", "steamy", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "steamy", "none") && "a" != ini_read_string("Ranks", "steamy", "none") && "b" != ini_read_string("Ranks", "steamy", "none") && "c" != ini_read_string("Ranks", "steamy", "none"))
                    ini_write_string("Ranks", "steamy", global.rank)
            }
            ini_close()
            if (!instance_exists(obj_endlevelfade))
                instance_create(x, y, obj_endlevelfade)
            if (state != 71)
            {
				sprite_index = spr_lookdoor
                audio_stop_all()
                state = 71
                //obj_endlevelfade.alarm[0] = 235
                image_index = 0
            }
        }
    }
}
