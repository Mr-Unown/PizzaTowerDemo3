if (image_xscale < 300)
{
    image_xscale += 0.5
    image_yscale += 0.5
}
else
    instance_destroy()
x -= image_xscale
y -= image_yscale

