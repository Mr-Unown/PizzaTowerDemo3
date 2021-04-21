scr_roomnames()
if message != noone
	string_roomname = message
else
	string_roomname = ""
//Level Names
var roomname = room_get_name(room)
if (global.snickchallenge == 0)
{
    if (string_letters(roomname) == "entrance" || string_letters(roomname) == "entrancesecret") //|| room = medieval_pizzamart
    {
	string_status = "Playing a level"
	string_state = "Entrance"
	string_imagekey = "entrance"
    }
    else if (string_letters(roomname) == "medieval" || string_letters(roomname) == "medievalsecret") || room = medieval_pizzamart
    {
	string_status = "Playing a level"
	string_state = "Pizzascape"		
	string_imagekey = "medieval"
    }
    else if (string_letters(roomname) == "ruin" || string_letters(roomname) == "ruinsecret") || room = ruin_pizzamart
    {
	string_status = "Playing a level"
	string_state = "Ancient Cheese"	
	string_imagekey = "ruin"
    }
    else if (string_letters(roomname) == "dungeon" || string_letters(roomname) == "dungeonsecret") || room = dungeon_pizzamart
    {
	string_status = "Playing a level"
	string_state = "Bloodsauce Dungeon"	
	string_imagekey = "dungeon"
    }
    else if (string_letters(roomname) == "ancient" || string_letters(roomname) == "ancientsecret")
    {
	string_status = "Playing a level"
	string_state = "Ancient Passageway"
	string_imagekey = "ancient"
    }				
    else if (string_letters(roomname) == "chateau" || string_letters(roomname) == "chateausecret")
    {
	string_status = "Playing a level"
	string_state = "Pizzascare"
	string_imagekey = "default"
    }			
    else if (string_letters(roomname) == "strongcold" || string_letters(roomname) == "strongcoldsecret")
    {
	string_status = "Playing a level"
	string_state = "Strongcold"
	string_imagekey = "default"
    }
    else if (string_letters(roomname) == "golf" || string_letters(roomname) == "golfsecret")
	{
	string_status = "Playing a level"
	string_state = "Golf Eternal"	
	string_imagekey = "default"
    }
    else if (string_letters(roomname) == "resto" || string_letters(roomname) == "restosecret")
    {
	string_status = "Playing a level"
	string_state = "Golf Eatin'"
	string_imagekey = "default"
    }			
    else if ((string_letters(roomname) == "desert" || string_letters(roomname) == "desertsecret")) && global.desertnight = false
    {
	string_status = "Playing a level"
	string_state = "Oregano Mirage"
	string_imagekey = "default"
    }
    else if ((string_letters(roomname) == "desert" || string_letters(roomname) == "desertsecret")) && global.desertnight = true
    {
	string_status = "Playing a level"
	string_state = "Majoram Dream"
	string_imagekey = "default"
    }	
    else if (string_letters(roomname) == "factory" || string_letters(roomname) == "factorysecret")
    {
	string_status = "Playing a level"
	string_state = "Pizzasauce Factory"
	string_imagekey = "default"
    }
    else if (string_letters(roomname) == "sewer" || string_letters(roomname) == "sewersecret")
    {
	string_status = "Playing a level"
	string_state = "Tubular Trash Zone"
	string_imagekey = "default"
    }
    else if (string_letters(roomname) == "freezer" || string_letters(roomname) == "freezersecret")
    {
	string_status = "Playing a level"
	string_state = "The Freezer"
	string_imagekey = "default"
    }
    else if (string_letters(roomname) == "mansion" || string_letters(roomname) == "mansionsecret")
    {
	string_status = "Playing a level"
	string_state = "Pepper Mansion"
	string_imagekey = "default"
    }
    else if (string_letters(roomname) == "kungfu" || string_letters(roomname) == "kungfusecret")
    {
	string_status = "Playing a level"
	string_state = "Streets of Pizza"
	string_imagekey = "default"
    }			
	else
	{	
	string_status = ""
	string_state = ""
	string_imagekey = "default"
	}
}
else if !alarm[0]
{
	string_status = "Playing a level"
	string_state = "Snick's Challenge"	
	string_imagekey = "snickchallenge"
	alarm[0] = 50
}