uniform float time;
varying vec2 vUv;
varying vec3 vPosition;
uniform sampler2D texture1;
float PI = 3.1415926;
uniform vec3 mousePos;

void main () {
	vUv = uv;

	vec3 newpos = position;
	if(length(position - mousePos) < 100.) {
		newpos *= vec3(2., 2.,2.);
	}


	vec4 mvPosition = modelViewMatrix * vec4(newpos, 1.);
	gl_PointSize = 1. * ( 1. / -mvPosition.z);
	gl_Position = projectionMatrix * mvPosition;
}