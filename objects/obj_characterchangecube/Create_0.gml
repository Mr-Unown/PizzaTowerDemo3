#macro DOUGIE true // DISABLE THIS FOR RELEASE BUILDS!!!
image_speed = 0
activated = 0
depth = 1
storedspotlight = obj_player1.spotlight
player = obj_player1
if obj_player1.spotlight = false && global.coop = true
	player = obj_player2
