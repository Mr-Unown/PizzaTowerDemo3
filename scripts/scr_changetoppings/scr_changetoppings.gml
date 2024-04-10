function scr_changetoppings() {
	with (obj_collect)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
	   {
		   if global.collectstyle = 0
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
		   else if global.collectstyle = 1
		   sprite_index = choose(spr_shroomcollectNEW, spr_tomatocollectNEW, spr_cheesecollectNEW, spr_sausagecollectNEW, spr_pineapplecollectNEW)
	   }
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible1
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
		{
			if global.collectstyle = 0
			sprite_index = choose(spr_not in the gametopping1, spr_not in the gametopping2, spr_not in the gametopping3, spr_not in the gametopping4, spr_not in the gametopping5)
			else if global.collectstyle = 1
		   sprite_index = choose(spr_not in the gametopping2NEW, spr_not in the gametopping3NEW, spr_not in the gametopping4NEWG, spr_not in the gametopping6NEW , spr_not in the gametopping7NEW)
		}
	        instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
	        repeat (3)
	            instance_create(((x + (sprite_width / 2)) + random_range(-5, 5)), ((y + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)
	    }
	}
	with (obj_escapecollect)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if global.collectstyle = 0
	   {
	   if obj_player1.character != "not in the game"
            sprite_index = choose(spr_baconcollect, spr_eggcollect, spr_fishcollect, spr_bananacollect, spr_shrimpcollect)
	   else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_not in the gameescapetopping1, spr_not in the gameescapetopping2, spr_not in the gameescapetopping3, spr_not in the gameescapetopping4, spr_not in the gameescapetopping5)
	   }
	   else if global.collectstyle = 1
	        sprite_index = spr_escapecollectNEW
	        instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
	        repeat (3)
	            instance_create(((x + (sprite_width / 2)) + random_range(-5, 5)), ((y + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)
	    }
	}
	with (obj_bigcollect)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if global.collectstyle = 0
{
        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1, spr_pizzacollect2, spr_pizzacollect3)
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1halloween, spr_pizzacollect2halloween, spr_pizzacollect3halloween)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible2
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1cheese, spr_pizzacollect2cheese, spr_pizzacollect3cheese)
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_not in the gamebigpizza1, spr_not in the gamebigpizza2, spr_not in the gamebigpizza3)
}
else if global.collectstyle = 1
{
	if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
		sprite_index = choose(spr_bigsausagecollect, spr_bigcheesecollect, spr_bigpineapplecollect, spr_bigtomatocollect, spr_bigshroomcollect)
	if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
		sprite_index = choose(spr_not in the gamebigcollect1, spr_not in the gamebigcollect2, spr_not in the gamebigcollect3, spr_not in the gamebigcollect4, spr_not in the gamebigcollect5, spr_not in the gamebigcollect6)
}
	        instance_create(x, y, obj_cloudeffect)
	        repeat (3)
	            instance_create((x + random_range(-10, 10)), (y + random_range(-10, 10)), obj_cloudeffect)
	    }
	}
	with (obj_giantcollect)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = spr_giantpizza
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = spr_giantpizzahalloween
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible3
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = spr_giantpizzacheese
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = spr_not in the gamegiantpizza
	        instance_create(x, y, obj_cloudeffect)
	        repeat (5)
	            instance_create((x + random_range(-15, 15)), (y + random_range(-15, 15)), obj_cloudeffect)
	    }
	}
	with (obj_pizzaslice)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = spr_pizzaslice
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = spr_halloweenspinningslice
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible4
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = spr_cheesespinningslice
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = spr_sweetspinningslice						
	        instance_create(x, y, obj_cloudeffect)
	        repeat (3)
	            instance_create((x + random_range(-10, 10)), (y + random_range(-10, 10)), obj_cloudeffect)
	    }
	}
	with (obj_destroyable2)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = spr_destroyablepep
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = spr_halloweensmallblock
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickblock
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = spr_cheesedestroyableblock
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = spr_not in the gamedestroyablepep
	        instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
	        repeat (3)
	            instance_create(((x + (sprite_width / 2)) + random_range(-5, 5)), ((y + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)
	    }
	}
	with (obj_destroyable2escape)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = spr_destroyablepepescape
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = spr_halloweensmallblockescape
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickblockescape
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = spr_cheesedestroyableblockescape
		else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
			sprite_index = spr_not in the gamedestroyablepepescape						
	        instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
	        repeat (3)
	            instance_create(((x + (sprite_width / 2)) + random_range(-5, 5)), ((y + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)
	    }
	}
	with (obj_destroyable2_big)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
	            sprite_index = spr_bigbreakable
	        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
	            sprite_index = spr_halloweenbigblock
	        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
	            sprite_index = spr_snickbigblock
	        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
	            sprite_index = spr_cheesebigblock
			else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
				sprite_index = spr_not in the gamebigbreakable				
	        instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
	        repeat (3)
	            instance_create(((x + (sprite_width / 2)) + random_range(-10, 10)), ((y + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)
	    }
	}
	with (obj_destroyable2_bigescape)
	{
	    if (ds_list_find_index(global.saveroom, id) == -1)
	    {
	        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
	            sprite_index = spr_bigbreakableescape
	        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
	            sprite_index = spr_halloweenbigblockescape
	        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
	            sprite_index = spr_snickbigblockescape
	        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
	            sprite_index = spr_cheesebigblockescape
			else if ((obj_player1.character == "not in the game" && obj_player1.spotlight == 1) || (obj_player2.character == "not in the game" && obj_player1.spotlight == 0))
				sprite_index = spr_not in the gamebigbreakableescape					
	        instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_cloudeffect)
	        repeat (3)
	            instance_create(((x + (sprite_width / 2)) + random_range(-10, 10)), ((y + (sprite_height / 2)) + random_range(-5, 5)), obj_cloudeffect)
	    }
	}




}
