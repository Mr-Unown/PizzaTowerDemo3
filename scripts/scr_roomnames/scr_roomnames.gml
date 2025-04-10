function scr_roomnames(_room = room) {
	switch _room
	{
	#region Entrance
		case entrance_1:
			_message = "Welcome to Pizza Tower";
			break;
		case entrance_2:
			_message = "Checkered Hallway";
			break;		
		case entrance_3:
			_message = "From the Bottom";
			break;	
		case entrance_4:
			_message = "Guest Room";
			break;	
		case entrance_5:
			_message = "Jungle Shapes";
			break;	
		case entrance_6:
			_message = "Where is the Reception?";
			break;	
		case entrance_7:
			_message = "Super Slump";
			break;	
		case entrance_8:
			_message = "A city now?";
			break;	
		case entrance_9:
			_message = "Sweden Heaven";
			break;	
		case entrance_10:
			_message = "World of John";
			break;	
		case entrance_11:
			_message = "Daring Escape";
			break;		
		case entrance_treasure:
			_message = "First Treasure";
			break;		
		case entrance_secret1:
			_message = "Big Steps";
			break;	
		case entrance_secret2:
			_message = "Sorry!";
			break;	
		case entrance_secret3:
			_message = "Not so much a secret";
			break;
		case entrance_secret4:
			_message = "Don't forget your moves";
			break;			
		case entrance_secret5:
			_message = "Eating a big Pizza Alone";
			break;			
		case entrance_secret6:
			_message = "Hamster Tube";
			break;			
	#endregion
	#region Medieval
		case medieval_1:
			_message = "Pizza Tower in Ye Olde Time";
			break;
		case medieval_2:
			_message = "Valiant and Lazy Knight";
			break;		
		case medieval_3:
			_message = "Thunderstruck";
			break;	
		case medieval_3_1:
			_message = "Banquet Hall";
			break;			
		case medieval_4:
			_message = "Medieval Fantasy";
			break;	
		case medieval_5:
			_message = "Odd Castle Architecture";
			break;	
		case medieval_6:
			_message = "Library of Stupidity";
			break;	
		case medieval_7:
			_message = "Thats How We Roll";
			break;	
		case medieval_8:
			_message = "Goblin Pit";
			break;	
		case medieval_9:
			_message = "Treasure Room";
			break;	
		case medieval_9_1:
			_message = "Golden Bricks"
			break;
		case medieval_10:
			_message = "John Throne";
			break;	
		case medieval_treasure:
			_message = "Peanut Allergy";
			break;	
		case medieval_pizzamart:
			_message = "Medieval Marketplace";
			break;				
		case medieval_secret1:
			_message = "Pizza Squared by 6";
			break;	
		case medieval_secret2:
			_message = "Get Some Speed";
			break;	
		case medieval_secret3:
			_message = "Have Some Toppings";
			break;
		case medieval_secret4:
			_message = "Pizza Block Art Exposition";
			break;			
		case medieval_secret5:
			_message = "Too Heavy and Too Fat";
			break;			
		case medieval_secret6:
			_message = "The King Pizza";
			break;			
	#endregion	
	#region Ruin
		case ruin_1:
			_message = "Ruins of the Pizza Tower";
			break;
		case ruin_2:
			_message = "Ruined Exploration";
			break;		
		case ruin_3:
			_message = "This Was Once a Bathroom";
			break;	
		case ruin_4:
			_message = "Meet the Bomb Goblin";
			break;	
		case ruin_5:
			_message = "Boring Ruin";
			break;	
		case ruin_6:
			_message = "No Tourist Allowed";
			break;	
		case ruin_7:
			_message = "Roundabout Route";
			break;	
		case ruin_8:
			_message = "And Who Might You Be?";
			break;	
		case ruin_9:
			_message = "No Crackers";
			break;	
		case ruin_10:
			_message = "Very Very Old Cheese";
			break;	
		case ruin_11:
			_message = "Ancient Gods and PB";
			break;		
		case ruin_12:
			_message = "Ancient John Retreat";
			break;				
		case ruin_13:
			_message = "Temple of Boom";
			break;						
		case ruin_treasure:
			_message = "Get Beaned!";
			break;	
		case ruin_pizzamart:
			_message = "Ancient Depot";
			break;						
		case ruin_secret1:
			_message = "And This Was My Bedroom";
			break;	
		case ruin_secret2:
			_message = "Hidden and Ancient Pizza";
			break;	
		case ruin_secret3:
			_message = "Ancient Block Destruction";
			break;
		case ruin_secret4:
			_message = "Invincible Man of Ball";
			break;			
		case ruin_secret5:
			_message = "No Cheese Here";
			break;			
		case ruin_secret6:
			_message = "Dashing Maniac";
			break;			
	#endregion			
	#region Dungeon
		case dungeon_1:
			_message = "Pizza Tower of Hell!";
			break;
		case dungeon_2:
			_message = "Smells Like Death";
			break;		
		case dungeon_3:
			_message = "Pizza Cutter of Doom";
			break;	
		case dungeon_4:
			_message = "Very Hot Sauce";
			break;	
		case dungeon_5:
			_message = "Spilled Sauce";
			break;	
		case dungeon_6:
			_message = "Circles of Heck";
			break;	
		case dungeon_7:
			_message = "Roll With It";
			break;	
		case dungeon_8:
			_message = "The Fall";
			break;	
		case dungeon_9:
			_message = "Depths of Hell";
			break;	
		case dungeon_10:
			_message = "John in Hell";
			break;	
		case dungeon_treasure:
			_message = "Miscellaneous Edible";
			break;	
		case dungeon_pizzamart:
			_message = "Pizzamart in Hell!";
			break;				
		case dungeon_secret1:
			_message = "A Nice Row All For You";
			break;	
		case dungeon_secret2:
			_message = "No Pain No Gain";
			break;	
		case dungeon_secret3:
			_message = "Sauce and Butt";
			break;
		case dungeon_secret4:
			_message = "Not So Hellish Contraption";
			break;			
		case dungeon_secret5:
			_message = "Midway Point of The Fall";
			break;			
		case dungeon_secret6:
			_message = "Hell Isnt So Bad";
			break;			
	#endregion			
	#region Ancient
		case ancient_1:
			_message = "Return to Pizza Tower";
			break;
		case ancient_2:
			_message = "Purple Hallway";
			break;		
		case ancient_3:
			_message = "Unearthly Hues";
			break;	
		case ancient_4:
			_message = "Strangely Similar";
			break;	
		case ancient_5:
			_message = "Abstract Geometry";
			break;	
		case ancient_6:
			_message = "You call this a reception?";
			break;	
		case ancient_7:
			_message = "Super Slump 2";
			break;	
		case ancient_8:
			_message = "Deliveryboy Troubles";
			break;	
		case ancient_9:
			_message = "Sweden Hell";
			break;	
		case ancient_10:
			_message = "Revenge of John";
			break;	
		case ancient_10_1:
			_message = "Dark Hallway";
			break;
		case ancient_10_2:
			_message = "Pit of John";		
			break;			
		case ancient_11:
			_message = "Emergency Exit";
			break;		
		case ancient_treasure:
			_message = "Beloved Treasure";
			break;		
		case ancient_secret1:
			_message = "Small Leaps";
			break;	
		case ancient_secret2:
			_message = "Smashing and Entering";
			break;	
		case ancient_secret3:
			_message = "A well-guarded secret";
			break;
		case ancient_secret4:
			_message = "Show off those Moves!";
			break;			
		case ancient_secret5:
			_message = "Eating a big Pizza Alone 2";
			break;			
		case ancient_secret6:
			_message = "Highway through John";
			break;			
	#endregion	
	#region Chateau
		case chateau_1:
			_message = "Pizza Tower at Halloween";
			break;
		case chateau_2:
			_message = "Eerily Similar";
			break;		
		case chateau_3:
			_message = "Sorcerer Apprentice";
			break;	
		case chateau_3_1:
			_message = "Hallway of Terror!";
			break;			
		case chateau_4:
			_message = "Goblin Massacre";
			break;	
		case chateau_5:
			_message = "Revenge of the Killer Goblins";
			break;	
		case chateau_6:
			_message = "Jumpscare";
			break;	
		case chateau_7:
			_message = "You Cannot Escape...";
			break;	
		case chateau_8:
			_message = "Goblin Pit of Horror";
			break;	
		case chateau_9:
			_message = "Thriller Flight";
			break;	
		case chateau_9_1:
			_message = "Brown Bricks";
			break;			
		case chateau_10:
			_message = "Pizzard Council";
			break;	
		case chateau_treasure:
			_message = "Peanut Minus";
			break;	
		case chateau_pizzamart:
			_message = "Halloween Spookfair";
			break;				
		case chateau_secret1:
			_message = "Claustrophobic";
			break;	
		case chateau_secret2:
			_message = "Just Run... Away";
			break;	
		case chateau_secret3:
			_message = "Scariest Jump";
			break;
		case chateau_secret4:
			_message = "Pizza Block of Terror";
			break;			
		case chateau_secret5:
			_message = "Too Heavy and Too Fast";
			break;			
		case chateau_secret6:
			_message = "The Terrifying Giant Pizza";
			break;			
	#endregion		
	#region Sanctum
		case sanctum_1:
			_message = "Temple of the Pizza Tower";
			break;
		case sanctum_2:
			_message = "Ruinous Road";
			break;		
		case sanctum_3:
			_message = "Bizzarely Dissimilar";
			break;	
		case sanctum_4:
			_message = "Cheesy Smell";
			break;	
		case sanctum_5:
			_message = "Sticky Ruin";
			break;	
		case sanctum_6:
			_message = "Tourist Trap";
			break;	
		case sanctum_7:
			_message = "Ocean of Cheese";
			break;	
		case sanctum_7_1:
			_message = "You found a Super Secret!";
			break;
		case sanctum_7_2:
			_message = "Spaghetti Junction";
			break;					
		case sanctum_8:
			_message = "Something Wicked";
			break;	
		case sanctum_9:
			_message = "Blue Cheese";
			break;	
		case sanctum_10:
			_message = "Sanctum of Cheese";
			break;	
		case sanctum_11:
			_message = "Ancient Gods and PB 2";
			break;		
		case sanctum_12:
			_message = "Daily Stains";
			break;		
		case sanctum_12_1:
			_message = "and Dirty Surfaces!";
			break;							
		case sanctum_13:
			_message = "Escape Pit";
			break;						
		case sanctum_treasure:
			_message = "Kitchen Object!?";
			break;	
		case sanctum_pizzamart:
			_message = "Modern Convenience";
			break;						
		case sanctum_secret1:
			_message = "Bizzarely Familiar";
			break;	
		case sanctum_secret2:
			_message = "Hidden and Ancient Box";
			break;	
		case sanctum_secret3:
			_message = "Action Block Destruction";
			break;
		case sanctum_secret4:
			_message = "Spectacular Man of Ball";
			break;			
		case sanctum_secret5:
			_message = "All Cheese Here";
			break;			
		case sanctum_secret6:
			_message = "Dashing Psycho";
			break;			
	#endregion			
	#region Strongcold
		case strongcold_10:
			_message = "Pizza Tower and it's Christmas!";
			break;
		case strongcold_9:
			_message = "Merrily Similar";
			break;		
		case strongcold_8:
			_message = "Tis the Season...";
			break;	
		case strongcold_7:
			_message = "...To be Jelly";
			break;	
		case strongcold_6:
			_message = "Christmas Time Chime";
			break;	
		case strongcold_5:
			_message = "Holiday Torture Room";
			break;	
		case strongcold_4:
			_message = "Explosive Present";
			break;	
		case strongcold_3:
			_message = "Merry Swissmas";
			break;	
		case strongcold_2:
			_message = "New Rear Eve";
			break;	
		case strongcold_miniboss:
			_message = "It's Claus!";
			break;			
		case strongcold_1:
			_message = "Dejohn Vu";
			break;	
		case strongcold_escape:
			_message = "The Tower Ultimatum";
			break;			
		case strongcold_treasure:
			_message = "Here lies Cake";
			break;	
		case strongcold_pizzamart:
			_message = "Merry Pizzamart!";
			break;				
		case strongcold_secret1:
			_message = "Present Blocks";
			break;	
		case strongcold_secret2:
			_message = "Pool of Christmas Joy";
			break;	
		case strongcold_secret3:
			_message = "The Bad Part of Winter";
			break;
		case strongcold_secret4:
			_message = "Hidden Present";
			break;			
		case strongcold_secret5:
			_message = "Secret in the Season";
			break;			
		case strongcold_secret6:
			_message = "There's a Present Down There";
			break;			
	#endregion				
	#region Desert
		case desert_1:
			_message = "Pizza Tower of the West";
			break;
		case desert_2:
			_message = "Rooting and Tooting";
			break;		
		case desert_3:
			_message = "Good Ol' Pizzamart!?";
			break;	
		case desert_4:
			_message = "Eating Spicy Today";
			break;	
		case desert_5:
			_message = "Mouth on Fire";
			break;	
		case desert_6:
			_message = "Breaking Through!";
			break;	
		case desert_7:
			_message = "A Miner Problem";
			break;	
		case desert_8:
			_message = "Cave Tale";
			break;	
		case desert_9:
			_message = "Boulders Everywhere";
			break;
		case desert_9_1:
			_message = "Unstable Ground";
			break;				
		case desert_10:
			_message = "Weak Stomach";
			break;	
		case desert_11:
			_message = "Weirder West";
			break;	
		case desert_12:
			_message = "Western Loving Aliens";
			break;		
		case desert_13:
			_message = "Kentucky Kenny Course";
			break;		
		case desert_14:
			_message = "Really Really Hot";
			break;		
		case desert_15:
			_message = "John the Alien";
			break;		
		case desert_mart1:
			_message = "Do you have Pizza?";
			break;		
		case desert_mart2:
			_message = "Storage Room";
			break;					
		case desert_portal:
			_message = "YOU'RE NOT SUPPOSED TO BE HERE";
			break;					
		case desert_treasure:
			_message = "Deserted Treasure";
			break;		
		case desert_secret1:
			_message = "Left or Right?";
			break;	
		case desert_secret2:
			_message = "Bodyslamming";
			break;	
		case desert_secret3:
			_message = "Dumb as a rock";
			break;
		case desert_secret4:
			_message = "Congratulations on finding this";
			break;			
		case desert_secret5:
			_message = "Rocky Protection";
			break;			
		case desert_secret6:
			_message = "Definately a Secret";
			break;			
	#endregion
		default:
			_message = noone;
			break;
	}



}
