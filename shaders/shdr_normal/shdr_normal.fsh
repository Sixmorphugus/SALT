varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

#define LN 512//Number of lights

uniform sampler2D spec;//specular map
uniform sampler2D norm;//normal map

uniform float lights[LN*4];//x,y,range,flare
uniform float lcolor[LN*3];//r,g,b
uniform vec3 ambiance;//r,g,b

uniform vec2 camoffset;//x,y

vec3 lighting(float spec,vec3 norm,vec3 dif,vec2 pos,vec4 light,vec3 col)
{
    vec3 N = normalize(vec3(pos,0.0)-light.xyz);
    float A = max(1.0-length(vec2(pos)-light.xy)/light.w,0.0);
    return pow(max(dot(norm,N),0.0)*4.0,spec*4.0)*0.25*A*dif.rgb*normalize(col);
}

void main()
{
    float Spec = texture2D( spec, v_vTexcoord ).r;
    vec3 Norm = normalize(texture2D( norm, v_vTexcoord ).rgb*-2.0+1.0);
    vec4 Dif = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    vec3 total;
	
	for(int i = 0; i < LN; i++) {
		if(lights[i*4+2] == 0.0)
			continue; // inactive light
	
		total += lighting(Spec,Norm,Dif.rgb,v_vPosition,vec4(lights[i*4]-camoffset.x,lights[i*4+1]-camoffset.y,lights[i*4+3],lights[i*4+2]),vec3(lcolor[i*3],lcolor[i*3+1],lcolor[i*3+2]));
	}
	
	gl_FragColor = vec4(min(ambiance+total,Dif.rgb),Dif.a);
}

