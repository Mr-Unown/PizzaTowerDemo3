var speedoffset = 6;
#region Heatafterimage
			with (instance_create(x, y, obj_aftereffectimage))
			{
				image_index = other.image_index
				sprite_index = other.sprite_index
				image_xscale = other.image_xscale
				
				hspeed = -speedoffset
				vspeed = 0
			}
			with (instance_create(x, y, obj_aftereffectimage))
			{
				image_index = other.image_index
				sprite_index = other.sprite_index
				image_xscale = other.image_xscale
				hspeed = speedoffset
				vspeed = 0
			}
			with (instance_create(x, y, obj_aftereffectimage))
			{
				image_index = other.image_index
				sprite_index = other.sprite_index
				image_xscale = other.image_xscale
				hspeed = 0
				vspeed = -speedoffset
			}
			with (instance_create(x, y, obj_aftereffectimage))
			{
				image_index = other.image_index
				sprite_index = other.sprite_index
				image_xscale = other.image_xscale
				hspeed = 0
				vspeed = speedoffset
			}			
			#endregion