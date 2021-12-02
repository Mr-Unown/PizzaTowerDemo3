varying vec2 v_vTexcoord;

uniform float time;

//DDP You can change these values to tweak how intense the background is
#define WAVELENGTH 48.0
#define AMPLITUDE 0.005

void main() {
    // Wobble back and forth more with time.
	vec2 uv = v_vTexcoord;
    uv.x += sin(WAVELENGTH * uv.y + 3.0 * time ) * AMPLITUDE;
}
