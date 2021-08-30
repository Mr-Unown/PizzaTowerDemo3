if instance_exists(baddieID) && global.freezeframe = false
{
    instance_destroy()
    instance_destroy(baddieID)
}