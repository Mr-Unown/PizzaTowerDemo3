#region Collide
if (vsp < 20)
    vsp += grav
x += hsp
y += floor(vsp)
#endregion

if !alarm[0]
	alarm[0] = 5
//Potato
drawx = x
drawy = y