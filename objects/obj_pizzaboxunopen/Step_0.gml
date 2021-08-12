if (place_meeting(x, y, obj_player) && sprite_index == spr_pizzaboxunopen)
{
    if audio_is_playing(sfx_collecttoppin)
        audio_stop_sound(sfx_collecttoppin)
    scr_soundeffect(sfx_collecttoppin)
    if (content == obj_bigcollect)
    {
        instance_create(x, (y - 3), obj_bigcollect)
        instance_create(x, y, obj_bangeffect)
    }
    if (content == obj_pizzakinshroom)
    {
        with (instance_create(x, y, obj_smallnumber))
            number = "1000"
        with instance_place(x, y, obj_player)
            collectscore = (collectscore + 1000)
        instance_create(x, y, obj_taunteffect)
		global.combotime = 60
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
        //global.style = (global.style + 50)		
        with (instance_create(x, (y - 25), content)) {
            sprite_index = spr_toppinshroom_intro
			//Follower DS_list
			ds_list_add(global.follower, id);
			ds_list_add(global.toppinlist,id);
		}
        if (global.toppintotal < 5)
            obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal >= 5)
            obj_tv.message = "YOU HAVE ALL TOPPINS!"
        obj_tv.showtext = 1
        obj_tv.alarm[0] = 150
        global.toppintotal = (global.toppintotal + 1)
        global.shroomfollow = 1
    }
    if (content == obj_pizzakincheese)
    {
        with (instance_create(x, y, obj_smallnumber))
            number = "1000"
        with instance_place(x, y, obj_player)
            collectscore = (collectscore + 1000)
        with (instance_create(x, (y - 25), content)) {
            sprite_index = spr_toppincheese_intro
			//Follower DS_list
			ds_list_add(global.follower, id);
			ds_list_add(global.toppinlist,id);			

		}
        instance_create(x, y, obj_taunteffect)
		global.combotime = 60
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
        //global.style = (global.style + 50)		
        if (global.toppintotal < 5)
            obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal >= 5)
            obj_tv.message = "YOU HAVE ALL TOPPINS!"
        obj_tv.showtext = 1
        obj_tv.alarm[0] = 150
        global.toppintotal = (global.toppintotal + 1)
        global.cheesefollow = 1
    }
    if (content == obj_pizzakintomato)
    {
        with (instance_create(x, y, obj_smallnumber))
            number = "1000"
        with instance_place(x, y, obj_player)
            collectscore = (collectscore + 1000)
        with (instance_create(x, (y - 25), content)) {
            sprite_index = spr_toppintomato_intro
			//Follower DS_list
			ds_list_add(global.follower, id);
			ds_list_add(global.toppinlist,id);			
		}			
        instance_create(x, y, obj_taunteffect)
		global.combotime = 60
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
        //global.style = (global.style + 50)		
        if (global.toppintotal < 5)
            obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal >= 5)
            obj_tv.message = "YOU HAVE ALL TOPPINS!"
        obj_tv.showtext = 1
        obj_tv.alarm[0] = 150
        global.toppintotal = (global.toppintotal + 1)
        global.tomatofollow = 1
    }
    if (content == obj_pizzakinsausage)
    {
        with (instance_create(x, y, obj_smallnumber))
            number = "1000"
        with instance_place(x, y, obj_player)
            collectscore = (collectscore + 1000)
        with (instance_create(x, (y - 25), content)) {
            sprite_index = spr_toppinsausage_intro
			//Follower DS_list
			ds_list_add(global.follower, id);
			ds_list_add(global.toppinlist,id);			
		}
        instance_create(x, y, obj_taunteffect)
		global.combotime = 60
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
        //global.style = (global.style + 50)		
        if (global.toppintotal < 5)
            obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal >= 5)
            obj_tv.message = "YOU HAVE ALL TOPPINS!"
        obj_tv.showtext = 1
        obj_tv.alarm[0] = 150
        global.toppintotal = (global.toppintotal + 1)
        global.sausagefollow = 1	
    }
    if (content == obj_pizzakinpineapple)
    {
        with (instance_create(x, y, obj_smallnumber))
            number = "1000"
        with instance_place(x, y, obj_player)
            collectscore = (collectscore + 1000)
        with (instance_create(x, (y - 25), content)) {
            sprite_index = spr_toppinpineapple_intro
			//Follower DS_list
			ds_list_add(global.follower, id);
			ds_list_add(global.toppinlist,id);			

		}			

        instance_create(x, y, obj_taunteffect)

		global.combotime = 60
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
        //global.style = (global.style + 50)
		
        if (global.toppintotal < 5)
            obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
        if (global.toppintotal >= 5)
            obj_tv.message = "YOU HAVE ALL TOPPINS!"
        obj_tv.showtext = 1
        obj_tv.alarm[0] = 150
        global.toppintotal = (global.toppintotal + 1)
        global.pineapplefollow = 1
    }
    if (content == obj_noisebomb)
    {
        with (instance_create(x, (y - 25), content)) {
            sprite_index = spr_noisebomb_intro
			//Follower DS_list
			ds_list_add(global.follower, id);
		}
        instance_create(x, y, obj_taunteffect)
		global.combotime = 60
		global.pausecombotime = true
		obj_tv.alarm[1] = 75
        //global.style = (global.style + 50)		
        obj_tv.message = "UH OH..."
        obj_tv.showtext = 1
        obj_tv.alarm[0] = 150
        global.noisebombfollow = 1
		with (obj_player)
		{
		state = 51
		sprite_index = spr_bossintro
		image_index = 0
		scr_soundeffect(44)
		}			
    }	
    sprite_index = spr_pizzaboxopen
	if (ds_list_find_index(global.saveroom, id) == -1)
	ds_list_add(global.saveroom, id)
}
if (sprite_index == spr_pizzaboxopen && floor(image_index) == 16)
    instance_destroy()


