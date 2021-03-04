//Force Death
if dying = true && thrown != 1 && ((state != 105 && state != 109 && state != 106 && state != 200)) && deathbuffer <= 0 {
	event_user(0)
}