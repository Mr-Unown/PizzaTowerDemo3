//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
uniform vec2 texel;

const float Xspeed = 0.0025;
const float Xfreq = 5.0;
const float Xsize = 3.0;

#define WAVELENGTH 48.0
#define AMPLITUDE 0.005

void main() {
    //Wobble back and forth
	vec2 uv = v_vTexcoord;
    uv.x += sin(WAVELENGTH * uv.y + 3.0 * time ) * AMPLITUDE;
	float Xwave = sin(time*Xspeed + v_vTexcoord.y*Xfreq) * (Xsize*texel.x) * (v_vTexcoord.y);
   
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(Xwave,0.0));
}
