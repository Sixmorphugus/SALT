///lights_normal(add,rotation)
if argument0
{
    shader_set(shdr_rotate)
    shader_set_uniform_f(uangle,-argument1)
    surface_set_target(NMnorm)
}
else
{
    shader_reset()
    surface_reset_target()
}
