/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_red);
draw_set_font(fnt_GUI);
draw_text (55,55,"Lives: " +string(global.life));
draw_text (55, 65, "Power Crystal: " +string(global.powercrystal));
draw_text (55, 85, "Passcode Collected: " +string(global.passcode));


