/// @description Parallax Handler

//This global var simulates the passage of time between rooms
global.ScrollOffset++
//Parallax Moment
for (var i = 0; i < array_length(layers); ++i) {
    if layers[i] != undefined {
		with layers[i] {
			//Set up Variables
			var x_pos = layer_xoffset + layer_xshift;
			var y_pos = layer_yoffset + layer_yshift;
			var parallax_value = parallax_layer(layer_id);
			layer_xshift += layer_xspeed;
			layer_yshift += layer_yspeed;
			
			//Change Layer
			layer_x(layer_id, parallax_value[0] + x_pos);
			layer_y(layer_id, parallax_value[1] + y_pos);			
			layer_background_speed(layer_id, layer_image_speed);
		} 
	}
}
