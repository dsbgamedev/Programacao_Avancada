/// @description Insert description here
// You can write your code in this editor



var _mouse_click = mouse_check_button_released(mb_left);

if(_mouse_click)
{
	//Criando o meu quadrado onde ela clicou
	var _quadrado = instance_create_layer(mouse_x,mouse_y,layer, obj_quadrado);
}


//Sempre que eu apertar o enter ele reincia a room

if(keyboard_check_pressed(vk_enter)) room_restart();