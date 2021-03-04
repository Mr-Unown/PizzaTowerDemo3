if popped = true
	visible = false
if respawnbuffer <= 0
{
	timer = random_range(0,50);
	popped = false
	visible = true
}
if respawnbuffer > 0
    respawnbuffer--
if popped = false {
drawy = anchorY + dsin(timer * frequency) * amplitude;
timer++;
}