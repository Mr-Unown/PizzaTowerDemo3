varying vec2 v_vTexcoord;

uniform float time;

#define WAVELENGTH 3.0
#define AMPLITUDE 0.002

void main() {
    // Wobble back and forth
	vec2 uv = v_vTexcoord;
    uv.x += sin(WAVELENGTH * uv.y + 3.0 * time ) * AMPLITUDE;
    vec4 texel = texture2D(gm_BaseTexture, uv);	
    gl_FragColor = texel;	
}
