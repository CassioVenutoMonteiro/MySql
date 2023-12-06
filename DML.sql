-- drop database exemplo;
														-- DML
create database exemplo;
use exemplo;

create table tablum(
chave_um int unsigned auto_increment primary key not null,
colum varchar(40),
coldois decimal(9,2),
coltres date
)engine=innodb;
select * from tablum;

create table tabldois(
chave_dois int unsigned auto_increment primary key not null,
colum varchar(40),
coldois decimal(9,2),
coltres date
)engine=innodb;
select * from tabldois;

create table junt_um_dois(
chave_um int unsigned not null,
chave_dois int unsigned not null,
primary key(chave_um, chave_dois),
foreign key (chave_um) references tablum(chave_um),
foreign key (chave_dois) references tabldois(chave_dois)
)engine=innodb;
select * from junt_um_dois;

insert into tablum values(null,"bla bla",10,"2000-12-30");
insert into tablum values(null,"tralala",13.2,"2022-10-20");
insert into tablum values(null,"siclano",123.89,"2222-02-12");
insert into tablum values(null,"fulano",300.5,"2012-12-12");
insert into tablum values(null,"tercerano",25,"1956-01-07");
insert into tablum values(null,"fulano",25,"1980-03-21");
insert into tablum values(null,"siclano",25,"2000-09-29");
insert into tablum values(null,"tercerano",25,"2005-04-08");
insert into tablum values(null,"tercerano",25,"2023-04-19");

insert into tabldois values(null,"bli bli bli",25.5,"2000-12-30");
insert into tabldois values(null,"ble ble ble",40,"2022-10-20");
insert into tabldois values(null,"ble ble ble",55,"2023-09-15");
insert into tabldois values(null,"euclides",40,"2222-02-12");
insert into tabldois values(null,"loren",1000,"2012-12-12");
insert into tabldois values(null,"lorem",23,"1956-01-07");
insert into tabldois values(null,"ipsum",78,"1980-03-21");
insert into tabldois values(null,"ipsum",15,"2005-04-08");

insert into junt_um_dois values(1,1);
insert into junt_um_dois values(2,5);
insert into junt_um_dois values(3,4);
insert into junt_um_dois values(5,1);
insert into junt_um_dois values(4,2);

			-- INSERT
		-- Fazer um incerte mais reduzido em todos os campos da tabela:
	-- NULL	-> utilizado em campos que sao auto_increment;
    -- ""	-> utilizado em campos que nao tem um valor numerico.Ex.: varchar, char, date, time...
    -- formato da data: ano-mes-dia;
        
	insert into tablum values(null,"Socorro",10,"2005-4-8"); -- inserir dados em toda a tabela tablum SEGUINDO A ORDEM CORRETA DA TTAAAAAABBBBBBBBBEEEEEEEEEEEELLLLLLLLLAAAAAAAAAAAAAAAAA(TABELA)
-- insert into nome_tabela values(valor_coluna1 ou PrimariKey,valor_coluna2,valor_coluna3...);

		-- fazer um insert em apenas algumas colunas da tabela:
	
    insert into tablum (chave_um,coltres) values(null,"2005-4-8"); -- insere dados em algumas colunas especificas de cada tabela NA ORDEM QUE VC COLOCAR ANTES DO VALUES
-- insert into nome_tabela (nome_coluna,nome_coluna...) values(valor_coluna,valor_coluna...);

		-- fazer um insert atravez da interface do select(passo a passo):
	-- 1º	faca um select na tabela que voce quer inserir:
    select * from tablum;
    -- 2º	na ultima linha que tiver preenchida por null escreva os valores para cada coluna;
    -- 3º 	clique em apply;
    -- 4º a)	caso voce queira apenas fazer o insert, clique novamente em apply;
    -- 4º b)	caso voce queira o script do insert, copie a linha gerada automaticamente, clique em cancel, clique no x para fechar o select e clique em don't apply
    
			-- DELETE
		-- deletar todas as linhas da tabela que tenha algo especifico:
	-- simbolos de comparacao:
    -- maior igual	-> >=
    -- maior		-> >
    -- menor igual	-> <=
    -- menor		-> <
    -- igual		-> =
    -- diferente	-> <> ou !=
        
	delete from tablum where chave_um >= 3; -- deleta todas as linhas que tenham a primary key igual a 3;
-- delete from nome_tabela where coluna_identificadora simbolo_de_comparacao valor_identificador
	
    -- Delete atravez da interface do select(passo a passo):
	-- 1º	faca um select na tabela que voce quer deletar:
    select * from tablum;
    -- 2º	clique com o botao direito na linha que deseja deletar
    -- 3º 	clique na opcao Delete Row(s);
    -- 3º 	clique no x para fechar o select;
	-- 4º a)	caso voce queira apenas fazer o insert, clique novamente em apply;
    -- 4º b)	caso voce queira o script do insert, copie a linha gerada automaticamente, clique em cancel, clique no x para fechar o select e clique em don't apply B
    
			-- UPDATE
		--  atualizar todas as linhas que tenha algo especifico
	
    update tablum set colum = "funhe",coltres = "2021-09-08" where chave_um = 1; -- atualiza todas as linhas com os valores setados que tenham a pk igual a 1
-- update nome_tabela set nome_coluna = novo_valor, nome_coluna = novo_valor ... where coluna_identificadora simbolo_de_comparacao valor_identificador
	
    -- Atualizar atravez da interface do select(passo a passo):
	-- 1º	faca um select na tabela que voce quer atualizar:
    select * from tablum;
    -- 2º	clique nos dados de cada coluna que deseja alterar e digite os novos valores;
    -- 3º 	clique em apply;
    -- 4º a)	caso voce queira apenas atualizar os dados, clique novamente em apply;
    -- 4º b)	caso voce queira o script do update, copie a linha gerada automaticamente, clique em cancel, clique no x para fechar o select e clique em don't apply
    


			-- SELECT
	/*ATENÇÃO!!! TODOS OS EXEMPLOS ABAIXO PODEM SER MISTURADOS PARA ATINGIR DETERMINADOS OBJETIVOS, DESDE QUE A SINTAXE SEJA RESPEITADA*/
    
		-- SELECT COMUM: 
        
	-- *	-> selecionar todas as colunas
        
	select * from tablum; -- visualizar todas as colunas da tabela "tablum"
-- select * from nome_tabela;

	select chave_um, colum from tablum; -- visualizar a coluna chave_um e colum da tabela tablum
-- select nome_coluna,nome_coluna from nome_tabela;

	select chave_dois from tabldois; -- visualizar apenas a coluna chave_um da tabela tabldois
-- select nome_coluna from nome_tabela; 


		-- FILTROS NO SELECT:
        
	-- >		-> maior que;
	-- <		-> menor que;
	-- <> ou !=	-> diferente de;
	-- =		-> igual a;
	-- ""		-> utilizado quando for comparar ou filtrar por texto;
	-- WHERE	-> palavra reservada para iniciar uma verificação;
    -- AND		-> permite colocar mais filtros por select;
    -- LIKE		-> busca dados filtrando por caracteres especificos como letras ou numeros;
    -- a%		-> o dado começa com a letra "a";
    -- %a		-> o dado termina com a letra "a";
    -- %a%		-> o dado contem letra "a" no meio;

        
	select * from tabldois where colum = "bli bli bli"; -- seleciona todas as colunas que tenha a colum = bli bli bli
-- select nome_coluna from nome_tabela where coluna = condicao;

	select * from tabldois where chave_dois > 1; -- seleciona todas as colunas que tenha a chave primarya maior que 1
-- select nome_coluna from nome_tabela where coluna > condicao;

	select * from tabldois where chave_dois < 3; -- seleciona todas as colunas que tenha a chave primarya menor que 3
-- select nome_coluna from nome_tabela where coluna < condicao;

	select * from tabldois where chave_dois <> 2; -- seleciona todas as colunas que tenha a chave primarya diferente de 2
-- select nome_coluna from nome_tabela where coluna <> condicao;

	select * from tabldois where chave_dois > 1 and chave_dois < 3; -- seleciona todas as colunas que tenha a chave primarya maior que 1 e menor que 2
-- select nome_coluna from nome_tabela where coluna > primeira_condicao and < segunda_condicao;

	select * from tabldois where colum like "i%"; -- seleciona todas as colunas que começam com a letra "i";
-- select nome_coluna from nome_tabela where nome_coluna_filtro like "caractere%";

	select * from tabldois where colum like "%i"; -- seleciona todas as colunas que terminam com a letra "i";
-- select nome_coluna from nome_tabela where nome_coluna_filtro like "%caractere";

	select * from tabldois where colum like "%r%"; -- seleciona todas as colunas que contenham a letra "r" no meio da palavra;
-- select nome_coluna from nome_tabela where nome_coluna_filtro like "%caractere%";

		-- calculos pelo select (funcoes de agregacao):
        
	-- AVG 		-> caucula a media de uma coluna;
	-- COUNT 	-> caucula a quantidade de elementos de uma coluna;
	-- SUM 		-> soma os valores de uma coluna;
	-- MAX 		-> traz o maior valor de uma coluna;
	-- MIN 		-> traz o menor valor de uma coluna;
	-- DISTINCT	-> traz apenas os valores distintos de uma coluna(não traz valores repetidos);
    
    select avg(coldois) from tabldois; -- seleciona a media da coluna coldois da tabela tsbldois
-- select avg(nome_coluna) from nome_tabelas;

	select count(coldois) from tabldois; -- conta a quantidade de elementos da coluna coldois da tabela tabldois
-- select count(nome_coluna) from nome_tabela;
    
	select sum(coldois) from tabldois; -- soma os valores da coluna coldois da tabela tabldois
-- select sum(nome_coluna) from nome_tabela;

	select max(coldois) from tabldois; -- seleciona o maior valor da coluna coldois da tabela tabldois
-- select max(nome_coluna) from nome_tabela;

	select min(coldois) from tabldois; -- seleciona o menor valor da coluna coldois da tabela tabldois
-- select min(nome_coluna) from nome_tabela;

	select distinct(coldois) from tabldois; -- seleciona todos os valores que não se repetem na coluna coldois da tabela tabldois
-- select distinct(nome_coluna) from nome_tabela;

		-- ORDENAR E AGRUPAR
        
	-- ORDER BY	-> ordena os dados por ordem alfabetica ou numeral (tambem ordena data);
    -- ASC		-> crescente
    -- DESC		-> decrescente
	-- GROUP BY-> agrupa os dados da tabela por uma coluna;
    
	select * from tabldois order by colum asc; -- seleciona os dados em ordem alfabetica crescente da coluna colum;
-- select nome_coluna from nome_tabela oreder by nome_coluna_ordem asc;
    
	select * from tabldois order by coldois desc; -- seleciona os dados em ordem numerica decrescente da coluna coldois;
-- select nome_coluna from nome_tabela oreder by nome_coluna_ordem desc;

	select count(chave_um), colum from tablum group by colum; -- conta quantas vezes cada dado da coluna colum foi repetido;
-- select nome_coluna from nome_tabla group by nome_coluna_agrupadora;

		-- intervalos
        
	-- BETWEEN			-> determina um intervalo de dados que ira trazar no select;
    -- AND				-> separa os intervalos;
    -- FORMATO DE DATA	-> ano-mes-dia ex.: "2000-01-01";
    
    select * from tablum where coltres between "2000-01-01" and "2022-12-31"; -- seleciona todos os dados que tenha a data entre 01/01-2000 e 31/12/2022;
-- select nome_coluna from nome_tabela where nome_coluna between inicio_intervalo and final_intervalo; 
    
		-- JOIN
	
    -- INNER JOIN			-> selecioa apenas os dados da interseccao entre as tabelas;
    -- LEFT JOIN			-> traz a tabela da esquerda com a interseccao com direita;
    -- RIGHT JOIN			-> traz a tabela da direita com a interseccao com a esquerda;
    -- JOIN DE TRES TABELAS	-> traz os dados de tres ou mais tabelas que se relacionam de N para N;
    -- union				-> traz todos os dados das tabelas chamadas sem repetir as linhas;
    -- union all			-> traz todos os dados das tabelas chamadas repetindo as linhas;
    -- AS					-> renomeia uma tabela ou coluna para facilitar o entemdimento em grandes selects;

	select tablum.chave_um, tablum.colum, tablum.coldois, tablum.coltres, junt_um_dois.chave_um, junt_um_dois.chave_dois
	from tablum inner join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um;
	-- seleciona a interseccao das tabelas tablum e junt_um_dois
    /* 
	select nome_tablea.nome_coluna
	from nome_tabela inner join nome_tabela
	on nome_tabela.pk_principal = nome_tabela.fk_referencia_pk
	*/
    
    select tablum.*, junt_um_dois.*
	from tablum left join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um;
	-- seleciona os dados da tablum mais a interseccao da tabela junt_um_dois
    /* 
	select nome_tablea.nome_coluna
	from nome_tabela left join nome_tabela
	on nome_tabela.pk_principal = nome_tabela.fk_referencia_pk
	*/
    
	select *
	from tablum right join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um;
	-- seleciona os dados da junt_um_dois mais a interseccao da tabela tablum
    /* 
	select nome_tablea.nome_coluna
	from nome_tabela left join nome_tabela
	on nome_tabela.pk_principal = nome_tabela.fk_referencia_pk
	*/

	select tablum.colum as coluna_1_tabela_1, tablum.coldois as coluna_2_tabela_1, tabldois.colum as coluna_2_tabela_1,tabldois.coldois as coluna_2_tabela_2
	from tablum join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um
	join tabldois
	on tabldois.chave_dois = junt_um_dois.chave_dois;
    -- seleciona os dados da tabela tablum e tabldois mesmo uma nao tendo relacao direta com a outra, elas sao associadas pela tabela junt_um_dois
    /* 
	select nome_tablea.nome_coluna
	from nome_tabela_1 join* nome_tabela_associativa
	on nome_tabela_1.pk_principal = nome_tabela.fk_referencia_pk_associativa
    join* nome_tabela_2
	on nome_tabela_2.pk_principal = nome_tabela.fk_referencia_pk_associativa
	*/
    -- * pode ser utilizado qualquer tipo de join;
    
    select *
	from tablum left join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um
    
    union
    
    select *
	from tablum right join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um;
    -- traz todos os dados das tabelas selecionadas excluindo os dados duplicados
    /*
    select nome_tablea.nome_coluna
	from nome_tabela_1 left join nome_tabela_2
	on nome_tabela.pk_principal = nome_tabela.fk_referencia_pk

    union
    
    select nome_tablea.nome_coluna
	from nome_tabela_1 left join nome_tabela_2
	on nome_tabela.pk_principal = nome_tabela.fk_referencia_pk
    */
    
    select *
	from tablum left join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um
    
    union all
    
    select *
	from tablum right join junt_um_dois
	on tablum.chave_um = junt_um_dois.chave_um;
    -- traz todos os dados das tabelas selecionadas mesmo que a linha esteja duplicada
    /*
    select nome_tablea.nome_coluna
	from nome_tabela_1 left join nome_tabela_2
	on nome_tabela.pk_principal = nome_tabela.fk_referencia_pk

    union
    
    select nome_tablea.nome_coluna
	from nome_tabela_1 left join nome_tabela_2
	on nome_tabela.pk_principal = nome_tabela.fk_referencia_pk
    */  
    
				-- VIEW
	-- view	-> reduz o tamanho de um select que sera chmado vairias vezes
create view filtro as select * from tabldois where colum like "%r%"; -- cria uma view que chama o select de maneira mais facil
-- create view nome_view as select_que_a_view_recebera;

drop view junt; -- deleta uma view;
-- drop view nome_view;

select * from filtro; -- mostra os valores da view
-- select nome_coluna from nome_viwe;

				-- PROCEDURE
			-- dentro de uma procedure pode ser executado qualquer comando
		-- delimiter	-> mostra onde comeca e termina uma procedure
        -- in			-> parametro de entrada
        -- out			-> parametro de saida
        -- begin		-> mostra onde comeca o que sera processado pela procedore
        -- end			-> mostra onde termina o que sera processado pela procedore
        -- if			-> executa uma acao de acordo com o resultado de uma verificacao 
        -- else			-> executa uma acao caso o if der falso
        -- then			-> mesmo valor do entao ou da chave {
        -- end if		-> mesmo valor do fim se ou da chave }
        -- declare		-> declara uma variavel
delimiter // 
create procedure insert_tablum(in _colum varchar(40), in _coldois decimal, in _coltres date)
begin
 declare id int;
 select chave_um into id from tablum where colum = _colum and coldois = _coldois and coltres = _coltres;
	if (id is null)
    then
    insert into tablum values(null, _colum, _coldois, _coltres);
    else
    select "tabela ja existente";
    end if;
end //
delimiter ; -- criou uma procidore que, no caso, verifica se o dado ja foi inserido, e se n tiver sido inserido ele insere;
/* 
delimiter //
create procedure nome_procedure (in parametros date(tipo de dado do parametro),...)
beguin
	sua funcao aqui
end//
delimiter ;
*/

call insert_tablum ("bb",22,"2022-13-10"); -- executa o que foi 
-- call nome_procedure(parametro1, parametro2);

drop procedure insert_tablum; -- exclui a procedure
-- drop procedure nome_procedure;
