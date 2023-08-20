/// @description Insert description here
// You can write your code in this editor

//Checando se o mouse esta por cima de mim
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
//Checando se o mouse clicou
var _mouse_click = mouse_check_button_pressed(mb_left);

image_blend = cor;

//Checando se o mouse esta por cima de mim e a pessoa clicou
if(_mouse_sobre)
{
	//Diminuir a opacidade
	image_alpha = .5;
	if(_mouse_click)
	{
		//Vou falar que o texto global.text é o meu texto
		global.texto = texto;
		//Definindo a cor global
		global.cor = cor;
		
		//Eu vou checar se ele é o que tem  a resposta correta se sim eu mostro uma mensagem de paraben
		//caso contratario eu mostro uma mensagem ofensiva!
		if(certo)
		{
			//A pessoa acertou
			show_message("Meus parabéns, mizerávil!");
			global.pergunta++;
			//Garantindo que o valor nao passa de 2
			global.pergunta %= 3;
			room_restart();
		}
		else
		{
			show_message("Voce errou hahahahah!!");
			//room_restart();
		}
					
			
	}
}
else
{
	//Resetando a opacidade
	image_alpha = 1;	
}
//show_debug_message(_mouse_sobre);


//Switch com base no texto ele mudar a cor do botao
//image_blend = c_
/*
Limao   = verde
Laranja = laranja
Morango = vermelho
Banana  = Amarelo
Uva     = Roxo

Se ele nao conhecer o texto a cor vai ser aqua
*/

switch(texto)
{
	case("Limao"):
		cor = c_lime;
		break;
	case("Laranja"):
		cor = c_orange;
		break;	
	case("Morango"):
		cor = c_red;
		break;	
	case("Banana"):
		cor = c_yellow;
		break;	
	case("Uva"):
		cor = c_purple;
		break;
	default:
		cor = c_aqua;
		
}