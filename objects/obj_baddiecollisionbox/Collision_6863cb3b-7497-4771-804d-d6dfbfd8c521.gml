if (other.playermode == 1) && global.freezeframe = false
{
    if instance_exists(baddieID)
    {
        baddieID.grabbedby = other.grabbedby
        instance_destroy()
        instance_destroy(baddieID)
    }
}

