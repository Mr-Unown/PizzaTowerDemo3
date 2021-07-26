depth = -999;
player = obj_player1;
has_selectedoption = false;
slider[0] = noone;
slider[1] = noone;
slider[2] = noone;
#region Scrollbars
var i = 0;
repeat(3)
{
	with instance_create(x,y,obj_palettechangerscrollbar)
	{
		colorchannel = i
		other.slider[colorchannel] = id;
	}
	i++
}


#endregion
global.colorchoosen = 0;