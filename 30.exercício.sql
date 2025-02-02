1. Somente o nome de todos os vendedores em ordem alfabética.

R: select nome from vendedor order by nome asc

2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.

R: select nome, valor  from produto a where valor > 200 order by valor 

3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.

R:  select  nome, valor, valor + (valor * 10 ) / 100 as Reajuste from produto order by nome;

4. Os municípios do Rio Grande do Sul.

R: select * from uf
select * from municipio where iduf = 5;

5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.

R: select * from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor;

6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.

R: select * from pedido where valor between 1000 and 1500;

7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.

R: select * from pedido where valor between 100 and 500;	

8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.

R: select * from vendedor;
select * from pedido where idvendedor = 1 order by valor desc;

9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.

R: select * from cliente;
select * from pedido where idcliente = 1 order by valor;

10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.

R: select * from pedido where idcliente = 15 and idvendedor = 1;

11. Os pedidos que foram transportados pela transportadora União Transportes.

R: select * from transportadora;
select * from pedido where idtransportadora = 2;