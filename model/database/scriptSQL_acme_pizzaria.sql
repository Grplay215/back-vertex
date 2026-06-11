INSERT INTO tbl_tipo (id, nome) VALUES
(1, 'Salgada'),
(2, 'Doce');
#---------------------------------------
# Pizzas 
#---------------------------------------
INSERT INTO tbl_pizza (id, nome, descricao, imagem) VALUES
(1, 'ACME TNT Especial', 'Pepperoni, calabresa, bacon crocante, cebola roxa e molho especial.', 'acme_tnt.png'),
(2, 'Calabresa', 'Calabresa fatiada, cebola e muçarela.', 'calabresa.png'),
(3, 'Portuguesa', 'Presunto, ovos, cebola, ervilha, azeitonas e muçarela.', 'portuguesa.png'),
(4, 'Marguerita', 'Muçarela, tomate fresco, manjericão e molho especial.', 'marguerita.png'),
(5, 'Napolitana', 'Muçarela, tomate, parmesão ralado e orégano.', 'napolitana.png'),
(6, 'Pepperoni', 'Generosas fatias de pepperoni sobre muçarela.', 'pepperoni.png'),
(7, 'Quatro Queijos', 'Muçarela, provolone, parmesão e requeijão cremoso.', 'quatro_queijos.png'),
(8, 'Bacon Supreme', 'Bacon crocante, cebola caramelizada e toque especial de orégano.', 'bacon_supreme.png'),
(9, 'Chocolate ao Leite', 'Cobertura cremosa de chocolate ao leite finalizada com raspas de chocolate.', 'chocolate_leite.png'),
(10, 'Brigadeiro', 'Brigadeiro artesanal e granulado de chocolate.', 'brigadeiro.png'),
(11, 'Prestigio', 'Chocolate ao leite e coco ralado.', 'prestigio.png'),
(12, 'Banana com Canela', 'Banana fatiada, açúcar e canela.', 'banana_canela.png'),
(13, 'Romeu e Julieta', 'Goiabada cremosa e queijo muçarela.', 'romeu_julieta.png'),
(14, 'Churros', 'Doce de leite, açúcar e canela.', 'churros.png'),
(15, 'Morango e Chocolate', 'Chocolate ao leite coberto com morangos frescos.', 'morango_chocolate.png'),
(16, 'Sensação', 'Chocolate, morangos e leite condensado.', 'sensacao.png');

##(17, 'Meio Calabresa Meio Brigadeiro', 'Metade calabresa e metade brigadeiro.', 'mista_calabresa_brigadeiro.png'),
##(18, 'Meio Portuguesa Meio Prestigio', 'Metade portuguesa e metade prestigio.', 'mista_portuguesa_prestigio.png'),
##(19, 'Meio Pepperoni Meio Morango', 'Metade pepperoni e metade morango com chocolate.', 'mista_pepperoni_morango.png'),
##(20, 'Meio Quatro Queijos Meio Churros', 'Metade quatro queijos e metade churros.', 'mista_4queijos_churros.png')

#---------------------------------------
# Pizza x Tipo
#---------------------------------------
#Salgadas
INSERT INTO tbl_pizza_tipo (id_pizza, id_tipo) VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),

#Doces
(9,2),
(10,2),
(11,2),
(12,2),
(13,2),
(14,2),
(15,2),
(16,2);

#Mistas
#(17,3),
#(18,3),
#(19,3),
#(20,3);

#--------------------------
# FILTROS
#--------------------------
#Retorna tudo
select
    tbl_pizza.id,
    tbl_pizza.nome,
    tbl_pizza.descricao,
    tbl_pizza.imagem,
    tbl_tipo.nome as tipo
from tbl_pizza
	inner join tbl_pizza_tipo
		on tbl_pizza.id = tbl_pizza_tipo.id_pizza
	inner join tbl_tipo
		on tbl_tipo.id = tbl_pizza_tipo.id_tipo;
        
        
#Retornar apenas pizzas salgadas
select
    tbl_pizza.id,
    tbl_pizza.nome,
    tbl_pizza.descricao,
    tbl_pizza.imagem
from tbl_pizza
	inner join tbl_pizza_tipo
		on tbl_pizza.id = tbl_pizza_tipo.id_pizza
	inner join tbl_tipo
		on tbl_tipo.id = tbl_pizza_tipo.id_tipo
		where tbl_tipo.nome = 'Salgada';
        

#Retornar apenas pizzas doces
select
    tbl_pizza.id,
    tbl_pizza.nome,
    tbl_pizza.descricao,
    tbl_pizza.imagem
from tbl_pizza
	inner join tbl_pizza_tipo
		on tbl_pizza.id = tbl_pizza_tipo.id_pizza
	inner join tbl_tipo
		on tbl_tipo.id = tbl_pizza_tipo.id_tipo
		where tbl_tipo.nome = 'Doce';

        
#Buscar pizza pelo ID
select
    tbl_pizza.id,
    tbl_pizza.nome,
    tbl_pizza.descricao,
    tbl_pizza.imagem,
    tbl_tipo.nome as tipo
from tbl_pizza
	inner join tbl_pizza_tipo
		on tbl_pizza.id = tbl_pizza_tipo.id_pizza
	inner join tbl_tipo
		on tbl_tipo.id = tbl_pizza_tipo.id_tipo
		where tbl_pizza.id = 1;