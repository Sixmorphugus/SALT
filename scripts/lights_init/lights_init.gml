///lights_init(width,height)
globalvar NMlights,NMcolor,NMamb,NMnorm,NMspec,uspec,unorm,uamb,ulights,ucolor,uangle,ucamoffset,ushadowcolor;

NMlights[m_max_lights * 4] = 0;
NMcolor[m_max_lights * 3] = 0;
NMamb = c_black;
NMambi = 1;

var w = surface_get_width(application_surface);
var h = surface_get_height(application_surface);

NMnorm = surface_create(w,h);
NMspec = surface_create(w,h);

uspec = shader_get_sampler_index(shdr_normal,"spec");
unorm = shader_get_sampler_index(shdr_normal,"norm");
uamb = shader_get_uniform(shdr_normal,"ambiance");
ulights = shader_get_uniform(shdr_normal,"lights");
ucolor = shader_get_uniform(shdr_normal,"lcolor");
uangle = shader_get_uniform(shdr_rotate,"angle");
ucamoffset = shader_get_uniform(shdr_normal,"camoffset");
ushadowcolor = shader_get_uniform(shdr_shadow,"shadowcol");
