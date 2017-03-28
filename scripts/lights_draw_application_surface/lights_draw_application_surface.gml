///lights_draw(camX, camY)
shader_set(shdr_normal)

texture_set_stage(uspec,surface_get_texture(NMspec))
texture_set_stage(unorm,surface_get_texture(NMnorm))

shader_set_uniform_f_array(ulights,NMlights)
shader_set_uniform_f_array(ucolor,NMcolor)
shader_set_uniform_f(uamb,colour_get_red(NMamb)/255,colour_get_green(NMamb)/255,colour_get_blue(NMamb)/255)
shader_set_uniform_f(ucamoffset, argument0, argument1);

draw_surface(application_surface,0,0)

shader_reset()

surface_set_target(NMnorm)
draw_clear_alpha(0,0)
surface_reset_target()

surface_set_target(NMspec)
draw_clear_alpha(0,0)
surface_reset_target()
