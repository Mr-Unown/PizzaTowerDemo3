//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
uniform vec2 texel;


#define WAVELENGTH 3.0
#define AMPLITUDE 0.002

void main() {
    // Wobble back and forth
	vec2 uv = v_vTexcoord;
    uv.x += sin(WAVELENGTH * uv.y + 3.0 * time ) * AMPLITUDE;
   
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
