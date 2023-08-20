// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function impar_ou_par(_n)
{
	//Checando se o _n é impar
	//Se o _temp for 0, o valor é par
	//Se o _temp for 1, o valor é impar
	//return _n % 2 == 1 ? "O numero é impar" : "O numero é par"; 
	
	//Checar se o resultado e menor do que ou igual a 1
	//Retorno o resultado
	
	//Função recursiva
	//Checar se o valor é menor ou igual a 1
	if(_n <= 1)
	{
		return 1;
	}
	else
	{
		return impar_ou_par(_n - 2);
	}
}

//Fatorial
function fatorial(_n)
{
	//Checando se o numero é menor do que 1
	if(_n < 1)
	{
		show_message("kkkkk");
		return 1;
	}
	else
	{
		return _n * fatorial(_n -1);	
	}
}

//Potenciação
function potencia(_base, _exp)
{
	//Se o meu expoetne for menor do que 1, eu retorno 1
	if(_exp < 1)
	{
		return 1;
	}
	else
	{
		//Multiplicar a minha base por ela mesma e diminuir o exp em 1
		return _base * potencia(_base, _exp - 1);
	}
	
}