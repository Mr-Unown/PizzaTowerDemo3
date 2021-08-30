if state = 100
with (other.id)
{
    if (instance_exists(baddieID) && baddieID.state != 109)
    {
        baddieID.grabbedby = other.grabbedby
        instance_destroy()
        instance_destroy(baddieID)
    }
}


