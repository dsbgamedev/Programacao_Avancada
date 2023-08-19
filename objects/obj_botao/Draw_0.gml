/// @description Insert description here
// You can write your code in this editor

draw_self();
//Desenhando o texto em um
draw_set_color(c_black);
//Alinhando o texto
draw_set_valign(1);
draw_set_halign(1);
draw_text(x,y, texto);
//Resetando
draw_set_color(c_white);
draw_set_valign(0);
draw_set_halign(0);


