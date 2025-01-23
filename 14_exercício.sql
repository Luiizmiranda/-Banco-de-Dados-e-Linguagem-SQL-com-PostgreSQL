1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
R: select nome , genero ,profissao from cliente order by nome desc;

2. Os clientes que tenham a letra “R” no nome
R: select nome from cliente where nome like '%R%';

3. Os clientes que o nome inicia com a letra “C”
R:select nome  from  cliente where nome like 'C%';

4. Os clientes que o nome termina com a letra “A”
R:select nome from cliente where nome like '%A';

/*
A consulta LIKE '%A' significa: "encontre nomes que terminam com a letra 'A'".
A consulta LIKE 'A%' significa: "encontre nomes que começam com a letra 'A'".
Já LIKE '%A%' significa: "encontre nomes que contenham a letra 'A' em qualquer posição".
*/

5. Os clientes que moram no bairro “Centro”
R:SELECT nome, bairro FROM cliente WHERE bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.';

/*
Aspas simples ('): Usadas para valores de texto (strings). Exemplo: 'Centro'.
Aspas duplas ("): Usadas para nomes de colunas ou tabelas (caso o identificador tenha letras maiúsculas espaços ou caracteres especiais).
*/

6. Os clientes que moram em complementos que iniciam com a letra “A”
R:select nome,complemento from cliente where complemento like 'A%';

7. Somente os clientes do sexo feminino
R:select genero from cliente where genero = 'F';

8. Os clientes que não informaram o CPF
R:SELECT CPF FROM CLIENTE WHERE CPF IS NULL;

9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
R:SELECT NOME , PROFISSAO FROM CLIENTE ORDER  BY PROFISSAO; 

10. Os clientes de nacionalidade “Brasileira”
R:SELECT  nacionalidade FROM CLIENTE WHERE nacionalidade = 'Brasileira';

11. Os clientes que informaram o número da residência
R:SELECT nome, numero FROM cliente WHERE numero IS NOT NULL;

12. Os clientes que moram em Santa Catarina
R:select  nome,uf from cliente where uf = 'SC';

13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002
R:select NOME, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
R:SELECT NOME || ' - ' || logradouro || ' - ' ||  numero || ' - ' || complemento ||
' - ' || bairro ||  ' - ' || municipio || ' - ' || uf  from cliente 