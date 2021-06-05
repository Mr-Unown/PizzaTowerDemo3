rotatedirection = choose(-1,0,1)
rotatevalue = random_range(-1,1)
grav = 0.5
hsp = random_range(-10, 10)
vsp = random_range(-5, 0)
if (obj_player.character == "S")
    sprite_index = spr_snickcollectible1
if (obj_player.character == "P")
    sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect)
if (obj_player.character == "N")
    sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5)
if (obj_player.character == "V")
    sprite_index = choose(spr_cheesetopping1, spr_cheesetopping2, spr_cheesetopping3, spr_cheesetopping4, spr_cheesetopping5)


