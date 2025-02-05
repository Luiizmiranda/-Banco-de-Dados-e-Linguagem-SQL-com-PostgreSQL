12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.

R: select * from pedido 
select * from pedido where idvendedor = 5 or idvendedor = 7;

13. Os clientes que moram em União da Vitória ou Porto União.

R:select * from municipio 
select * from cliente where idmunicipio <> 1 or idmunicipio <> 9


14. Os clientes que não moram em União da Vitória e nem em Porto União.

R: select * from cliente where idmunicipio <> 1 and idmunicipio <> 9;

15. Os clientes que não informaram o logradouro.

R: select * from cliente where logradouro is null;

16. Os clientes que moram em avenidas.

R:select * from cliente where logradouro like 'Av%';

17. Os vendedores que o nome começa com a letra S.

R:Select * from vendedor where nome like '%a';

18. Os vendedores que o nome termina com a letra A.

R: select * from vendedor where nome like '%a';

19. Os vendedores que o nome não começa com a letra A.

R: select * from vendedor where nome not like 'A%';

20. Os municípios que começam com a letra P e são de Santa Catarina.

R: select * from uf;
select * from municipio where nome like 'P%' and iduf = 1;

21. As transportadoras que informaram o endereço.

R:select * from transportadora where logradouro is not null;


22. Os itens do pedido 01.
R:Select * from pedido_produto where idpedido = 1;

23. Os itens do pedido 06 ou do pedido 10.

R:select * from pedido_produto where idpedido = 6 or idpedido = 10;