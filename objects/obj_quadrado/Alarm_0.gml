/// @description Insert description here
// You can write your code in this editor


//Checando se NAO exite um pai
if(pai == noone)
{
	//Eu fui o primeiro a ser criado, então eu sou o pai
	pai = id;
	//Vou falar que eu fico vermelho
	image_blend = c_red;
	
	//Criar os meus filhos tambem
	var _filho =  instance_create_layer(x + sprite_width * 1.5,y,layer,obj_quadrado);
	_filho.pai = pai;
	_filho.quantidade = quantidade - 1;
}


else
{
	//Só devo criar se a quantridade for maior do que 0
	if(quantidade > 0)
	{
		var _filho =  instance_create_layer(x + sprite_width * 1.5,y,layer,obj_quadrado);
		_filho.pai = pai;
		_filho.quantidade = quantidade - 1;
	}
	else //Sou ultimo filho e nao devo criar mais ninguem
	{
		pai.image_blend = c_maroon;
	}
}





