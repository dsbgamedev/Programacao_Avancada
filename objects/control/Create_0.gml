/// @description Insert description here
// You can write your code in this editor

//Variavel global
global.texto = "Teste";

global.cor = c_white;

//Perguntar uma senha para a pessoa
//Enquanto a pessoa nao acertar a senha, eu vou continuar pedindo a senha
/*
var _senha = 0;
var _senha_certa = 123;
var _conta1 = "";
*/

var _indice, _n1, _n2, _n3;

_indice = 1;

//Iniciando as variaveis
_n1 = 1;
_n2 = 0;
_n3 = 0;

//Fazer a sequencia de fibonacci até o 20
while(_indice < 20)
{
	//Somando n1 + n2
	_n3 = _n1 + _n2;
	//Fazendo o n1 e n2 avançarem
	_n1 = _n2;
	_n2 = _n3;
	
	//Exibindo o _n3
	show_debug_message(_n3);
	_indice++;
}


/*
while(_senha != _senha_certa)
{
	//Pedindo a senha para o usuario
	//Primeira repetição conta1 vai ter o valor "", entao ele vai perguntar qual
	//O valor da conta1
	//Ele vai checar se conta1 e igual a 2 se sim ele segue o codigo se nao
	//ele via para a sedungo repeticao
	//checar se conta1 e igual a 2
	//Vai pedr o valor da conta2
	//_senha = get_integer("Qual a senha ?", 0);
	if(_conta1 != 2)
	{
		var _conta1 = get_integer("Quanto é 1 + 1", 0);
	}
	
	if(_conta1 == 2)
	{
		show_message("Voce acertou!")
	}
	else
	{
		continue;	
	}
	var _conta2 = get_integer("Quanto é 3 x 4", 0);
	if(_conta2 == 12)
	{
		show_message("Voce acertou!")
	}
	else
	{
		continue;	
	}
	var _conta3 = get_string("Qual a capital do Brasil", 0);
	if(_conta3 == "Brasilia")
	{
		break;
	}
	
	
}
//show_message("Voce acertou a senha...");

//MOnte uma historia onde voce vai pedir informaçoes para o usuario ele so vai poder
//avançar na historia caso ele acerte essas informações
//fazendo 3 historias

var _cont = 1994;
var _texto = "";

while(_cont != _texto)
{
	var _cont = get_integer("Qual foi o penultimo campeonato que o Brasil foi campeao mundial", 0);
	if(_cont != 1994)
	{
		var cont = get_integer("Voce erro tente novamente:",0);
	}
	if(_cont == 1994)
	{
		show_message("Parabens, voce acertou");
	}
	else
	{
		continue;	
	}
	var _cont2 = get_string("Quem fez o gol da final da libertadores 2011 pelo Santos", 0);
	if(_cont2 != "Neymar")
	{
		var cont2 = get_string("Voce erro tente novamente:",0);
	}
	if(_cont2 == "Neymar")
	{
		show_message("Parabens, voce acertou");
	}
	else
	{
		continue;	
	}
	var _cont3 = get_integer("Em que ano o Pele morreu", 0);
	if(_cont3 != 2023)
	{
		var cont = get_integer("Voce erro tente novamente:",0);
	}
	if(_cont3 == 2023)
	{
		show_message("Parabens, voce acertou");
	}
	else
	{
		continue;		
	}
	
	show_message("Finalizado");
	break;
}*/
