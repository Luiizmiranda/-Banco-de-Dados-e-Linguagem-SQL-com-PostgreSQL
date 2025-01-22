1 select nome , genero ,profissao from cliente order by nome desc;

2 select nome from cliente where nome like '%R%';

3 select nome  from  cliente where nome like '%C%';

4 select nome from cliente where nome like 'A%';

/*
A consulta LIKE '%A' significa: "encontre nomes que terminam com a letra 'A'".
A consulta LIKE 'A%' significa: "encontre nomes que começam com a letra 'A'".
Já LIKE '%A%' significa: "encontre nomes que contenham a letra 'A' em qualquer posição".
*/

5 SELECT bairro FROM cliente WHERE bairro = 'Centro';

/*
Aspas simples ('): Usadas para valores de texto (strings). Exemplo: 'Centro'.
Aspas duplas ("): Usadas para nomes de colunas ou tabelas (caso o identificador tenha letras maiúsculas espaços ou caracteres especiais).
*/

6 select complemento from cliente where complemento like 'A%';

7 select genero from cliente where genero = 'F';

8 SELECT CPF FROM CLIENTE WHERE CPF IS NULL;

9 SELECT NOME , PROFISSAO FROM CLIENTE ORDER  BY PROFISSAO; 

10.SELECT  nacionalidade FROM CLIENTE WHERE nacionalidade = 'Brasileira';

11.SELECT numero FROM cliente WHERE numero IS NOT NULL;

12.select uf from cliente where uf = 'SC';

13.select data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

14.SELECT 
    'NOME: ' || nome || 
    ' LOGRADOURO: ' || logradouro || 
    ' NUMERO: ' || numero || 
    ' COMPLEMENTO: ' || complemento || 
    ' BAIRRO: ' || bairro || 
    ' MUNICIPIO: ' || municipio || 
    ' UF: ' || uf 
FROM cliente;

/*||: Operador de concatenação usado em SQL.
Certifique-se de que todas as partes concatenadas (colunas e strings literais) estejam devidamente separadas por ||.*/