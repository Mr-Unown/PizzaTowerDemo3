if (instance_exists(baddieID) && other.thrown == 1) && global.freezeframe = false
{
    instance_destroy()
    instance_destroy(baddieID)
}

