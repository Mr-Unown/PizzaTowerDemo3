with other.id
{
	if key_up2
	{
		if choosenhat < global.hatarraylength
			choosenhat += 1
		else
			choosenhat = 0
		
		if choosenhat = 0
			equippedhat = false;
		else
			equippedhat = true;
	}
}
