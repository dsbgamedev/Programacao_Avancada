/// @description Insert description here
// You can write your code in this editor

//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

//Checando se o mouse esta por cima de mim e a pessoa clicou


if(_mouse_sobre)
{
	//Diminuir a opacidade
	image_alpha = .5;
	if(_mouse_click)
	{
		//Vou falar que o texto global.text é o meu texto
		global.texto = texto;
	}
}
else
{
	//Resetando a opacidade
	image_alpha = 1;	
}
//show_debug_message(_mouse_sobre);




