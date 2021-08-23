if (instance_exists(baddieID) && other.thrown == 1) && global.freezeframe = false
{
	baddieID.initialvsp = other.hsp
	baddieID.initialhsp = other.vsp		
    instance_destroy()
    instance_destroy(baddieID)
}

