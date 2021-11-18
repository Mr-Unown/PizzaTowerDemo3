
if vertical = 1
	knightmaxy = knightroomy - (room_height * sign(hallwaydirection));	
var yoffset = 160

switch current_month
{
	case 4: //April
	
	if current_day = 1
	{
		global.timeevent = 2; //April fools
		if global.has_drawnpeter = false && object_index = obj_player1
		{
			var _chance = random_range(0,200);
			var yes = (_chance >= 200 ? true : false);
			global.draw_peter = yes;
		}
		else if global.has_drawnpeter = true
		{
			global.draw_peter = false
		}
	}
	
	break;
	case 12: //December
	
		global.timeevent = 1; //Xmas
		//Insert Christmas Event here
	
	break;
	case 6: //June
	
		global.timeevent = 4; //Summer
		
	break;
	case 10: //October
	
		global.timeevent = 3; //Halloween
		//Insert Halloween Event here
	
	break;	
}


//Surface
if !surface_exists(surf_pallete)
	surf_pallete = surface_create(surf_width,surf_height)
//Colors
scr_playercolors();
customupdate = true;
	
//Things
if (object_index == obj_player1)
{
	#region Perfetch Array
switch(global.levelname)
{
	case "entrance":
		global.prefetcharray[0] = bg_entrance1
		global.prefetcharray[1] = spr_entrancebgpillar
		global.prefetcharray[2] = bg_entranceforeground
	break;
	case "medieval":
		global.prefetcharray[0] = bg_medieval1
		global.prefetcharray[1] = spr_medievaldoor
		global.prefetcharray[2] = bg_medievaltowers
	break;
	case "ruin":
		global.prefetcharray[0] = bg_ruin
		global.prefetcharray[1] = bg_ruinarchitecture3
		global.prefetcharray[2] = bg_ruincloud
	break;
	case "dungeon":
		global.prefetcharray[0] = bg_dungeon1
		global.prefetcharray[1] = bg_dungeon1start
		global.prefetcharray[2] = bg_dungeonskeleton1
	break;
	case "ancient":
		global.prefetcharray[0] = bg_entrance1
		global.prefetcharray[1] = spr_ancienttv
		global.prefetcharray[2] = bg_darkjohn
	break;
	case "chateau":
		global.prefetcharray[0] = bg_chateau1
		global.prefetcharray[1] = spr_chateaudoor
		global.prefetcharray[2] = bg_chateautowers
	break;	
	case "sanctum":
		global.prefetcharray[0] = bg_sanctum
		global.prefetcharray[1] = bg_sanctumarchitecture3
		global.prefetcharray[2] = bg_sanctumsky
	break;	
	case "strongcold":
		global.prefetcharray[0] = bg_strongcold1
		global.prefetcharray[1] = spr_xmasdecotree
		global.prefetcharray[2] = bg_dungeonskeleton1
	break;
	default:
		global.prefetcharray[0] = bg_hubroom1
		global.prefetcharray[1] = bg_hubroom2
		global.prefetcharray[2] = spr_entrancegate
	break;
	global.prefetcharray[3] = spr_player_3hpidle
}
#endregion			
	//room_set_live(room, true);
    if (global.coop == 1)
	{
        #region Changetoppings
with (obj_collect)
{
    if (ds_list_find_index(global.saveroom, id) == -1)
    {
        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible1
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5)			
    }
}
with (obj_escapecollect)
{
    if (ds_list_find_index(global.saveroom, id) == -1)
    {
        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible1
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_PZtopping1, spr_PZtopping2, spr_PZtopping3, spr_PZtopping4, spr_PZtopping5)			
    }
}
with (obj_bigcollect)
{
    if (ds_list_find_index(global.saveroom, id) == -1)
    {
        if ((obj_player1.character == "P" && obj_player1.spotlight == 1) || (obj_player2.character == "P" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1, spr_pizzacollect2, spr_pizzacollect3)
        else if ((obj_player1.character == "N" && obj_player1.spotlight == 1) || (obj_player2.character == "N" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1halloween, spr_pizzacollect2halloween, spr_pizzacollect3halloween)
        else if ((obj_player1.character == "S" && obj_player1.spotlight == 1) || (obj_player2.character == "S" && obj_player1.spotlight == 0))
            sprite_index = spr_snickcollectible2
        else if ((obj_player1.character == "V" && obj_player1.spotlight == 1) || (obj_player2.character == "V" && obj_player1.spotlight == 0))
            sprite_index = choose(spr_pizzacollect1cheese, spr_pizzacollect2cheese, spr_pizzacollect3cheese)
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = choose(spr_PZbigpizza1, spr_PZbigpizza2, spr_PZbigpizza3)			
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
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = spr_PZgiantpizza			
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
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = spr_sweetspinningslice				
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
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = spr_PZdestroyablepep				
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
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = spr_PZdestroyablepepescape			
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
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = spr_PZbigbreakable				
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
		else if ((obj_player1.character == "PZ" && obj_player1.spotlight == 1) || (obj_player2.character == "PZ" && obj_player1.spotlight == 0))
			sprite_index = spr_PZbigbreakableescape				
    }
}

		#endregion
	}
    if (state == 46)
        state = 0
    if (object_index == obj_player2 && obj_player1.spotlight == 1 && global.coop == 1)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index == obj_player1 && obj_player1.spotlight == 0)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index != obj_player2 || global.coop == 1)
    {
        if (global.verticalh == 0)
        {
            if (targetDoor == "A") && instance_exists(obj_doorA)
            {
                if (hallway == 1)
                    x = (obj_doorA.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorA.x + 32)
                else if (portal == 1)
                    x = (obj_doorA.x + 16)
                else if (secreteye == 1)
                    x = (obj_doorA.x + 16)					
                else if (vertical == 1)
                    x = (obj_doorA.x + verticaloffset)
                else
                    x = (obj_doorA.x + 16)	
				if vertical == 1
				y = (obj_doorA.y + hallwaydirection * yoffset)
				else
                y = (obj_doorA.y - 14)
            }
            else if (targetDoor == "B") && instance_exists(obj_doorB)
            {
                if (hallway == 1)
                    x = (obj_doorB.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorB.x + 32)
                else if (portal == 1)
                    x = (obj_doorB.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorB.x + 16)
                else if (vertical == 1)
                    x = (obj_doorB.x + verticaloffset)
                else
                    x = (obj_doorB.x + 16)
				if vertical == 1
				y = (obj_doorB.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorB.y - 14)
            }
            else if (targetDoor == "C") && instance_exists(obj_doorC)
            {
                if (hallway == 1)
                    x = (obj_doorC.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorC.x + 32)
                else if (portal == 1)
                    x = (obj_doorC.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorC.x + 16)
                else if (vertical == 1)
                    x = (obj_doorC.x + verticaloffset)
                else
                    x = (obj_doorC.x + 16)
				if vertical == 1
				y = (obj_doorC.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorC.y - 14)
            }
            else if (targetDoor == "D") && instance_exists(obj_doorD)
            {
                if (hallway == 1)
                    x = (obj_doorD.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorD.x + 32)
                else if (portal == 1)
                    x = (obj_doorD.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorD.x + 16)
                else if (vertical == 1)
                    x = (obj_doorD.x + verticaloffset)
                else
                    x = (obj_doorD.x + 16)
				if vertical == 1
				y = (obj_doorD.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorD.y - 14)
            }
            else if (targetDoor == "E") && instance_exists(obj_doorE)
            {
                if (hallway == 1)
                    x = (obj_doorE.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorE.x + 32)
                else if (portal == 1)
                    x = (obj_doorE.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorE.x + 16)
                else if (vertical == 1)
                    x = (obj_doorE.x + verticaloffset)
                else
                    x = (obj_doorE.x + 16)
				if vertical == 1
				y = (obj_doorE.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorE.y - 14)
            }
            else if (targetDoor == "F") && instance_exists(obj_doorF)
            {
                if (hallway == 1)
                    x = (obj_doorF.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorF.x + 32)
                else if (portal == 1)
                    x = (obj_doorF.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorF.x + 16)
                else if (vertical == 1)
                    x = (obj_doorF.x + verticaloffset)
                else
                    x = (obj_doorF.x + 16)
				if vertical == 1
				y = (obj_doorF.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorF.y - 14)
            }
            else if (targetDoor == "G") && instance_exists(obj_doorG)
            {
                if (hallway == 1)
                    x = (obj_doorG.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorG.x + 32)
                else if (portal == 1)
                    x = (obj_doorG.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorG.x + 16)
                else if (vertical == 1)
                    x = (obj_doorG.x + verticaloffset)
                else
                    x = (obj_doorG.x + 16)
				if vertical == 1
				y = (obj_doorG.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorG.y - 14)
            }			
			else if (targetDoor = "start")
            {
				if (global.coop == 0)
				{
					x = backtohubstartx
					y = backtohubstarty
				}
				else
				{
					x = backtohubstartx - 32
					y = backtohubstarty
				}
            }
			else
			{
				show_debug_message("Specified Target Door not found...")
				if instance_exists(group_doortriggers)
				{
					show_debug_message("Found Subtitute Door")
					var door = group_doortriggers
					if (hallway == 1)
						x = (door.x + (hallwaydirection * 100))
					else if (box == 1)
						x = (door.x + 32)
					else if (portal == 1)
						x = (door.x + 16)
					else if (secreteye == 1)						
						x = (door.x + 16)
					else if (vertical == 1)
						x = (door.x + verticaloffset)
					else
						x = (door.x + 16)
					if vertical == 1
						y = (door.y + hallwaydirection * yoffset)
					else						
						y = (door.y - 14)
				}
				else
					show_debug_message("Cannot find Subtitute Door")
			}
        }
        if (global.verticalh == 1)
        {
            x = global.hx
            y = global.hy
            global.verticalh = 0
        }
        if (portal == 1)
        {
            movespeed = 0
            visible = true
            sprite_index = spr_pizzaportalentrancestart
            image_index = 0
            ds_list_clear(global.baddieroom)
			global.lapping = (global.lapping + 1)
			if global.lapping >= 3
				global.deathmode = true;
            scr_soundeffect(sfx_collectgiantpizza)
			with obj_timeattack
			{
			alarm[1] = 60
			global.taminutes = (global.storedtaminute);
			global.taseconds = (global.storedtasecond);
			}
            with (obj_tv)
            {
				showtext = 1
                _message = "LAP "+ string(global.lapping)+" OUT OF 3!"
				scr_queue_message("PTV Racing Division announces that the local Pizzaman has done "+ string(global.lapping)+" out of 3 Laps!");
                alarm[0] = 100
            } 
			portal = 0
        }
    }
	if secreteye == true
		substate = "secret_out"
	secreteye = 0 
    vertical = 0
    hallway = 0
    box = 0
    roomstartx = x
    roomstarty = y
}
if (object_index == obj_player2)
{
    if (global.coop == 1)
        scr_changetoppings()
    if (state == 46)
        state = 0
    if (object_index == obj_player2 && obj_player1.spotlight == 1 && global.coop == 1)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index == obj_player1 && obj_player1.spotlight == 0)
    {
        alarm[5] = 2
        alarm[7] = 60
        hurted = 1
    }
    if (object_index != obj_player2 || global.coop == 1)
    {
        if (global.verticalh == 0)
        {
            if (targetDoor == "A") && instance_exists(obj_doorA)
            {
                if (hallway == 1)
                    x = (obj_doorA.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorA.x + 32)
                else if (portal == 1)
                    x = (obj_doorA.x + 16)
                else if (secreteye == 1)
                    x = (obj_doorA.x + 16)					
                else if (vertical == 1)
                    x = (obj_doorA.x + verticaloffset)
                else
                    x = (obj_doorA.x + 16)	
				if vertical == 1
				y = (obj_doorA.y + hallwaydirection * yoffset)
				else
                y = (obj_doorA.y - 14)
            }
            else if (targetDoor == "B") && instance_exists(obj_doorB)
            {
                if (hallway == 1)
                    x = (obj_doorB.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorB.x + 32)
                else if (portal == 1)
                    x = (obj_doorB.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorB.x + 16)
                else if (vertical == 1)
                    x = (obj_doorB.x + verticaloffset)
                else
                    x = (obj_doorB.x + 16)
				if vertical == 1
				y = (obj_doorB.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorB.y - 14)
            }
            else if (targetDoor == "C") && instance_exists(obj_doorC)
            {
                if (hallway == 1)
                    x = (obj_doorC.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorC.x + 32)
                else if (portal == 1)
                    x = (obj_doorC.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorC.x + 16)
                else if (vertical == 1)
                    x = (obj_doorC.x + verticaloffset)
                else
                    x = (obj_doorC.x + 16)
				if vertical == 1
				y = (obj_doorC.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorC.y - 14)
            }
            else if (targetDoor == "D") && instance_exists(obj_doorD)
            {
                if (hallway == 1)
                    x = (obj_doorD.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorD.x + 32)
                else if (portal == 1)
                    x = (obj_doorD.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorD.x + 16)
                else if (vertical == 1)
                    x = (obj_doorD.x + verticaloffset)
                else
                    x = (obj_doorD.x + 16)
				if vertical == 1
				y = (obj_doorD.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorD.y - 14)
            }
            else if (targetDoor == "E") && instance_exists(obj_doorE)
            {
                if (hallway == 1)
                    x = (obj_doorE.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorE.x + 32)
                else if (portal == 1)
                    x = (obj_doorE.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorE.x + 16)
                else if (vertical == 1)
                    x = (obj_doorE.x + verticaloffset)
                else
                    x = (obj_doorE.x + 16)
				if vertical == 1
				y = (obj_doorE.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorE.y - 14)
            }
            else if (targetDoor == "F") && instance_exists(obj_doorF)
            {
                if (hallway == 1)
                    x = (obj_doorF.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorF.x + 32)
                else if (portal == 1)
                    x = (obj_doorF.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorF.x + 16)
                else if (vertical == 1)
                    x = (obj_doorF.x + verticaloffset)
                else
                    x = (obj_doorF.x + 16)
				if vertical == 1
				y = (obj_doorF.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorF.y - 14)
            }
            else if (targetDoor == "G") && instance_exists(obj_doorG)
            {
                if (hallway == 1)
                    x = (obj_doorG.x + (hallwaydirection * 100))
                else if (box == 1)
                    x = (obj_doorG.x + 32)
                else if (portal == 1)
                    x = (obj_doorG.x + 16)
                else if (secreteye == 1)					
                    x = (obj_doorG.x + 16)
                else if (vertical == 1)
                    x = (obj_doorG.x + verticaloffset)
                else
                    x = (obj_doorG.x + 16)
				if vertical == 1
				y = (obj_doorG.y + hallwaydirection * yoffset)
				else					
                y = (obj_doorG.y - 14)
            }			
			else if (targetDoor = "start")
            {
				if (global.coop == 0)
				{
					x = backtohubstartx
					y = backtohubstarty
				}
				else
				{
					x = backtohubstartx + 32
					y = backtohubstarty
				}
            }
			else
			{
				show_debug_message("Specified Target Door not found...")
				if instance_exists(group_doortriggers)
				{
					show_debug_message("Found Subtitute Door")
					var door = group_doortriggers
					if (hallway == 1)
						x = (door.x + (hallwaydirection * 100))
					else if (box == 1)
						x = (door.x + 32)
					else if (portal == 1)
						x = (door.x + 16)
					else if (secreteye == 1)						
						x = (door.x + 16)
					else if (vertical == 1)
						x = (door.x + verticaloffset)
					else
						x = (door.x + 16)
					if vertical == 1
						y = (door.y + hallwaydirection * yoffset)
					else						
						y = (door.y - 14)
				}
				else
					show_debug_message("Cannot find Subtitute Door")
			}
        }
        if (global.verticalh == 1)
        {
            x = global.hx
            y = global.hy
            global.verticalh = 0
        }
        if (portal == 1)
        {
            movespeed = 0
            visible = true
            sprite_index = spr_pizzaportalentrancestart
            image_index = 0
            ds_list_clear(global.baddieroom)
			global.lapping = (global.lapping + 1)
			if global.lapping >= 3
				global.deathmode = true;
            scr_soundeffect(sfx_collectgiantpizza)
			with obj_timeattack
			{
			alarm[1] = 60
			global.taminutes = (global.storedtaminute);
			global.taseconds = (global.storedtasecond);
			}
            with (obj_tv)
            {
				showtext = 1
                _message = "LAP "+ string(global.lapping)+" OUT OF 3!"
				scr_queue_message("PTV Racing Division announces that the local Pizzaman has done "+ string(global.lapping)+" out of 3 Laps!");
                alarm[0] = 100
            } 
			portal = 0
        }
    }
	if secreteye == true
		substate = "secret_out"	
	secreteye = 0 
    vertical = 0
    hallway = 0
    box = 0
    roomstartx = x
    roomstarty = y
}
/*
    if (global.shroomfollow == 1) && instance_exists(obj_pizzakinshroom) {
		with obj_pizzakinshroom {
        x = obj_player1.x
		y = obj_player1.y
		magnitude = 0;
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.cheesefollow == 1) && instance_exists(obj_pizzakincheese) {
		with obj_pizzakincheese {
        x = obj_player1.x
		y = obj_player1.y
		magnitude = 0;
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.tomatofollow == 1) && instance_exists(obj_pizzakintomato) {
		with obj_pizzakintomato {
        x = obj_player1.x
		y = obj_player1.y
		magnitude = 0;
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.sausagefollow == 1) && instance_exists(obj_pizzakinsausage){
		with obj_pizzakinsausage {
        x = obj_player1.x
		y = obj_player1.y
		magnitude = 0;
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.pineapplefollow == 1) && instance_exists(obj_pizzakinpineapple){
		with obj_pizzakinpineapple {
        x = obj_player1.x
		y = obj_player1.y
		magnitude = 0;
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}
    if (global.noisebombfollow == 1) && instance_exists(obj_noisebomb) {
		with obj_noisebomb {
        x = obj_player1.x
		y = obj_player1.y
		magnitude = 0;
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}	
	if global.geromefollowing = true  && instance_exists(obj_gerome){
		with obj_gerome {
        x = obj_player1.x
		y = obj_player1.y
		magnitude = 0;
		ds_queue_clear(followQueue)
		ds_queue_enqueue(followQueue, obj_player1.x) 
		ds_queue_enqueue(followQueue, obj_player1.y)
		}
	}*/
