draw_set_valign(fa_top);
draw_set_font(fnt_font1);

draw_set_halign(fa_right);
draw_text(room_width-50, 50, "Vidas: " + string(oCardPoints.lifes));

draw_set_halign(fa_left);

draw_text(50, 50, "Nível: " + string(oCardSpawner.num_cards/2));
draw_text(50, 610, "ATALHOS:\nENTER - Iniciar Nova Fase\nSPACE - Selecionar Carta\nBACKSPACE - Remover Cartas\nDELETE - Reiniciar Jogo");

draw_set_font(fnt_font2);
draw_set_halign(fa_center);
draw_text(room_width/2, 50, timer_cards);