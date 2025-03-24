draw_set_valign(fa_top);
draw_set_font(fnt_font1);

draw_set_halign(fa_right);
draw_text(room_width-50, 50, "Lifes: " + string(oCardPoints.lifes));

draw_set_halign(fa_left);

draw_text(50, 50, "Level: " + string(oCardSpawner.num_cards/2));
draw_text(50, 610, "KEYS:\nSPACE - Select Card\nENTER - Skip Level\nBACKSPACE - Remove Cards\nDELETE - Menu");

draw_set_font(fnt_font2);
draw_set_halign(fa_center);
draw_text(room_width/2, 50, timer_cards);