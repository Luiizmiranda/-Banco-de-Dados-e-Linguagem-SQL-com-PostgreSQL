create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
	
)

INSERT INTO pedido_produto (idpedido, idproduto, quantidade, valor_unitario) VALUES 
(1, 1, 1, 800),
(1, 2, 1, 500),
(2, 2, 1, 500),
(3, 4, 2, 150),
(4, 1, 1, 800),
(4, 3, 1, 200),
(5, 3, 1, 200),
(6, 1, 2, 800),
(6, 7, 1, 35),
(6, 5, 1, 200),
(6, 4, 1, 150),
(7, 1, 1, 800),
(8, 7, 5, 35),
(9, 1, 1, 800),
(9, 2, 1, 500),
(10, 5, 1, 200),
(11, 5, 1, 200),
(11, 6, 1, 100),
(12, 2, 1, 500),
(13, 3, 1, 200),
(13, 4, 1, 150),
(14, 6, 3, 100),
(15, 3, 1, 200);


select * from pedido_produto