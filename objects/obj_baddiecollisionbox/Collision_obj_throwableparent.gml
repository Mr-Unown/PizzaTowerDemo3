if (instance_exists(baddieID) && other.thrown == 1) && global.freezeframe = false
{
	baddieID.initialvsp = other.hsp/1.5
	baddieID.initialhsp = other.vsp/1.5
    instance_destroy()
    instance_destroy(baddieID)
}

