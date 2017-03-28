///Move light
lights_set_light((l mod m_max_lights),mouse_x,mouse_y,csi,csi/4,make_colour_hsv((l mod 8)*32,255,255))
csi++;
