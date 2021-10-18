//Cooleffect
var scale = 1.25;
var distance = point_distance(drawx,drawy,targetx,targety)
if biggening = true
drawxscale = approach(drawxscale,scale,0.15)
else if biggening = false && distance >= 96
drawxscale = approach(drawxscale, 0.85,0.15)
else
drawxscale = approach(drawxscale, 0,0.25)

if drawxscale = scale
biggening = false

drawyscale = drawxscale	