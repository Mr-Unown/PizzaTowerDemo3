depth = -999;
player = obj_player1;
has_selectedoption = false;
#region Scrollbars
var i = 0;
repeat(3)
{
	with instance_create(x,y,obj_palettechangerscrollbar)
	{
		colorchannel = i
	}
	i++
}


#endregion