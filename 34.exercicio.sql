Exercícios – funções agregadas



1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.

R: select idvendedor ,avg (valor) from pedido group by idvendedor having avg (valor) > 200

2. Os vendedores que venderam mais que R$ 1500,00.

R: select idvendedor,sum(valor) from pedido group by idvendedor having sum (valor) > 1500;

3. O somatório das vendas de cada vendedor.

R: select idvendedor,sum(valor) from pedido group by idvendedor; 

4. A quantidade de municípios.

R: select count (idmunicipio) from municipio

5. A quantidade de municípios que são do Paraná ou de Santa Catarina.

R: select * from uf
select count (idmunicipio) from municipio where iduf = 1 or iduf = 2


6. A quantidade de municípios por estado.

R: select iduf, count (idmunicipio) from municipio group by iduf

7. A quantidade de clientes que informaram o logradouro.

R:select count (idcliente) from cliente where logradouro is not null;

8. A quantidade de clientes por município.

r: select  idmunicipio,count (idcliente) from cliente group by idmunicipio

9. A quantidade de fornecedores.

R:  select count (idfornecedor) from fornecedor

10. A quantidade de produtos por fornecedor.

R: select idfornecedor, count (idproduto) from produto group by idfornecedor 

11. A média de preços dos produtos do fornecedor Cap. Computadores.

R: select * from fornecedor 
select avg (valor) from produto where idfornecedor = 1

12. O somatório dos preços de todos os produtos.

R: select sum(valor) from produto

13. O nome do produto e o preço somente do produto mais caro.

R: select nome, valor from produto order by valor desc limit 1

14. O nome do produto e o preço somente do produto mais barato.

R:select nome, valor from produto order by valor asc limit 1

15. A média de preço de todos os produtos.

R: select avg(valor) from produto

16. A quantidade de transportadoras.

R: select count (idtransportadora) from transportadora; 

17. A média do valor de todos os pedidos.

R: select avg(valor) from pedido 

18. O somatório do valor do pedido agrupado por cliente.

R: select idcliente, sum(valor) from pedido group by cliente idcliente;

19. O somatório do valor do pedido agrupado por vendedor.

R: select idvendedor, sum(valor) from pedido group by idvendedor;

20. O somatório do valor do pedido agrupado por transportadora.

R: select idtransportadora, sum(valor) from pedido group by idtransportadora;

21. O somatório do valor do pedido agrupado pela data.

22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.

23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.

24. A média do valor do pedido do vendedor André.

25. A média do valor do pedido da cliente Jéssica.

26. A quantidade de pedidos transportados pela transportadora BS. Transportes.

27. A quantidade de pedidos agrupados por vendedor.

28. A quantidade de pedidos agrupados por cliente.

29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.

30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.

31. A quantidade de microcomputadores vendida.

32. A quantidade de produtos vendida agrupado por produto.

33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.

34. A quantidade de produtos agrupados por pedido.

35. O somatório dos valores unitários de todos os produtos.

36. A média dos produtos do pedido 6.

37. O valor do maior produto do pedido.

38. O valor do menor produto do pedido.

39. O somatório da quantidade de produtos por pedido.

40. O somatório da quantidade de todos os produtos do pedido.