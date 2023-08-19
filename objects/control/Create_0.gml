/// @description Insert description here
// You can write your code in this editor

//Variavel global
global.texto = "Teste";

global.cor = c_white;

//Vetores 2D
/*
				Inventario
	Armas    Itens       Equipamentos
	Espada	 Laranja     Escudo
	Cajado	 Chiclete	 Capacete
	Punhal	 Sopa        Ombreira
	Pedra	 Pedra       Pedra
*/
/*
inventario = [
				["Armas","Espada","Cajado","Punhaç","Pedras"],
				["Itens","Laranja","Chiclete","Sopa","Pedra"],
				["Equipamentos","Escudo","Capacete","Ombreira","Pedra"]
			 ]
			 show_message(inventario);


categoria = 0;
item = 1;
*/

/*
//Categorias
inventario [0][0] = "Armas";
inventario [1][0] = "Itens";
inventario [2][0] = "Equipamentos";
//Armas
inventario [0][1] = "Espada";
inventario [0][2] = "Cajado";
inventario [0][3] = "Punhal";
inventario [0][4] = "Pedra";
//Itens
inventario [1] = ["Itens", "Laranja","Chiclete", "Sopa", "Pedra"];
//Equipamentos
inventario [2] = ["Equipamentos", "Escudo","Capacete", "Ombreira", "Pedra"];








*/
//Vetores Arrays
//Uma variavel co varias informações dela

//Calculando a nota de um aluno
//Um vetor de notas
//Eu vou perguntar se ele quer adicionar uma nota
//Se sim, eu vou pedir a nota (que deve ser o numero)
//Eu vou salvar essa nota no vetor de notas
//Se não, eu paro de perguntar as notas e calculo a media dele(soma os valores e divide)
//E apresento a media do aluno
/*
notas = [];
var _indice = 0;
while(true)
{
	var _adiciona = show_question("Voce quer adicionar alguma nota");
	//Checando se ele falou sim ou nao
	if(_adiciona)
	{
		//Se ele falou sim eu adiciono isso no meu vetor
		notas[_indice] = get_integer("Digite sua nota",0);
		//Incrementando o indice
		_indice++ ;
		//Recomeçando o laços de repetição
		continue;
	}
	else
	{
		//A pessoa falou nao saiu do laço de repetição
		break;
	}
}
//Calcular a média do aluno
var _soma = 0;
for(var i = 0; i <array_length(notas) ;  i++)
{
	_soma += notas[i];
}

//Calculando a media de fato
_media = _soma / array_length(notas);

show_message(_media);

/*

frutas = ["Morango","Banana","Uva","Morango","Limao"];

//Pegando o tamanho da sprite
var _largura = sprite_get_width(spr_botao);
var _espaco = 100;

//Instanciando os botoes com o texto correto
for(var i=0; i < array_length(frutas); i++)
{
	//instanciando o botao
	var _botao = instance_create_layer(_espaco + (_largura * i ) + ( _espaco * i) ,400,layer, obj_botao);
	_botao.texto = frutas[i];
}

*/


/*
Estrutura do meu quiz
	Quanto é 1 + 1?		Qual a capital do Brasil   Quanto é 3 x 2
	3				    Brasilia					8
	4					China						9
	2					Aviao						Avião
	0					Salvador					6

*/


//Criar um quiz
quiz [0][0] = "Quanto é 1 + 1 ?"
quiz [0][1] = 2;
quiz [0][2] = 4;
quiz [0][3] = 5;
quiz [0][4] = 0;

quiz [1][0] = "Qual a capital do Brasil ?"
quiz [1][1] = "Brasilia";
quiz [1][2] = "China";
quiz [1][3] = "Aviao";
quiz [1][4] = "Salvador";

quiz [2][0] = "Quanto é 3 x 2 ?"
quiz [2][1] = 6;
quiz [2][2] = 9;
quiz [2][3] = "Aviao";
quiz [2][4] = 8;
			    
//show_message(quiz);
			 
//Deixando a pergunta aleatoria

			 
//A coluna do meu array2d
pergunta = irandom(array_length(quiz)-1);		 

//Deixando a ordem das perguntas aleatorias

//Ajustando o meu global texto
global.texto = quiz[pergunta][0];

//Criando os botoes onde o texto dele são a possivel resposta
//Pegando o tamanho do vetor da minha pergunta
var _tam = array_length(quiz[pergunta]);
//Deixando a pergunta aleatoria
var _perg = irandom(_tam);
for(var i = 1; i < _tam; i++ )
{
	//Criando o botao
	var _botao = instance_create_layer(100 + i * 150,400, layer, obj_botao);
	//Dando o texto do botao
	
	//Aumentando o valor da pergunta
	_perg++;
	//Limitando o valor do perg
	_perg %= _tam - 1;
	
	//Se o valor do _peg for 1, entao esse botao e o que tem a resposta correta
	if(_perg == 0)
	{
		_botao.certo = true;
	}
	
	_botao.texto = quiz[pergunta][_perg + 1];
}

//Informar qual é o botao com a resposta certa


/*
frutas = ["Morango","Banana","Uva","Morango","Limao"];
//Dividindo a room em linhas colunas com base no tamanho da minha sprite do botao
//Pegando as dimensoes da sprite do botao
var _larg = sprite_get_width(spr_botao); //Pegando a altura
var _alt  = sprite_get_height(spr_botao); //Pegando a largura

//Quantas colunas a minha room tem
var _cols = room_width div _larg;//dividindo o tamanho da minha room pela largura sprite

//Quantas linhas a minha room tem
var _lins = room_height div _alt;

//Criar laços de repetição para percorrer as colunas e linha
//Eu vou rodar pelas colunas
for(var i = 1; i < _cols; i++)
{
	//Eu vou rodar pelas linhas
	for(var j = 0; j < _larg; j++)
	{
		//Ele apenas crie o botao SE o numero da coluna for impar
		//E o numero da linha tbm for impar
		if(i % 2 == 1 && j % 2 == 1)
		{
		//Criando um botao na posição da minha linha e da minha coluna
		//Eu quero que ele nomei a linha e a coluna de cada botao'
		var _botao = instance_create_layer(i * _larg,j * _alt,"Instances", obj_botao);
		
		//Adicionando uma fruta ao botao
		var _tam = array_length(frutas) -1;
		//Garantindo que o indice nunca passe do limite do vetor
		var _indice = i % array_length(frutas);
		_botao.texto = frutas[_indice];
		}
	}
		
}

/*

frutas = ["Morango","Banana","Uva","Morango","Limao"];
//Pegando o tamanho da sprite
var _largura = sprite_get_width(spr_botao);
var _altura = sprite_get_height(spr_botao);
var _espaco = 50;
//Instanciando os botoes com o texto correto
for(var i=0; i < array_length(frutas); i++)
{
	//instanciando o botao
	var _botao = instance_create_layer(400,_espaco +( _altura * i) + _espaco * i ,layer, obj_botao);
	_botao.texto = frutas[i];
}



/*
dias_da_semana = ["Segunda","Terça","Quarta","Quinta","Sexta","Sabado","Domingo"];
//Pegando o tamanho do meu vetor
var _tamanho = array_length(dias_da_semana);

for(i = 0; i < _tamanho; i++ )
{
	show_debug_message("Dias da semana :" + dias_da_semana[i]);
}

//Laço de repetição FOR
//for(variavel, condição, incremento);
//for(var i = 0; i < 10; i++ )
//{
//	show_message(i);
	
//}



/*
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
*/


//Perguntar uma senha para a pessoa
//Enquanto a pessoa nao acertar a senha, eu vou continuar pedindo a senha
/*
var _senha = 0;
var _senha_certa = 123;
var _conta1 = "";
*/

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
