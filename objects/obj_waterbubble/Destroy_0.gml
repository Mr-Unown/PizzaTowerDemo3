var randomxscale = random_range(1,1.5) * choose(-1,1)
with instance_create(x,y, obj_balloonpop){
image_angle = random_range(0,180)
image_xscale = randomxscale
image_yscale = abs(image_xscale)
sprite_index = spr_waterbubblepop
depth = -11
}