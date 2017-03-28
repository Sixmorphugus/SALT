///Draw FPS, number of lights and controls
draw_set_colour(c_white)
draw_text(8,8,string_hash_to_newline("FPS:"+string(fps_real)))
draw_text(8,24,string_hash_to_newline(string(l) + "/" + string(m_max_lights) + " light(s) and "+string(instance_number(obj_rock))+" rock(s)"))
draw_text(8,40,string_hash_to_newline("Left click to place lights"))
draw_text(8,56,string_hash_to_newline("Right click to place rocks"))

