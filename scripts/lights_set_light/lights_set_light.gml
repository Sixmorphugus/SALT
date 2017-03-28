///lights_set_light(light id,x,y,range,flare,color)
var i,X,Y,r,c,f;

i = argument0;
X = argument1;
Y = argument2;
r = argument3;
f = argument4;
c = argument5;

NMlights[i*4] = X;
NMlights[i*4+1] = Y;
NMlights[i*4+2] = r;
NMlights[i*4+3] = f;

NMcolor[i*3] = colour_get_red(c)/255;
NMcolor[i*3+1] = colour_get_green(c)/255;
NMcolor[i*3+2] = colour_get_blue(c)/255;