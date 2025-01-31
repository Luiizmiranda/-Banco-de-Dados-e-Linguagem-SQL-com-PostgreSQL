CREATE TABLE pedido (
	idpedido INTEGER NOT NULL,
	idcliente INTEGER NOT NULL,
	idtransportadora INTEGER,
	idvendedor INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	valor FLOAT NOT NULL,

	CONSTRAINT pk_pdd_idpedido PRIMARY KEY (idpedido),
	CONSTRAINT fk_pdd_idcliente FOREIGN KEY (idcliente) REFERENCES cliente (idcliente),
	CONSTRAINT fk_pdd_idtransportadora FOREIGN KEY (idtransportadora) REFERENCES transportadora (idtransportadora),
	CONSTRAINT fk_pdd_idvendedor FOREIGN KEY (idvendedor) REFERENCES vendedor (idvendedor)
);

INSERT INTO pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor) VALUES 
(1, '2008-04-01', 1300, 1, 1, 1),
(2, '2008-04-01', 500, 1, 1, 1),
(3, '2008-04-02', 300, 11, 2, 2),
(4, '2008-04-05', 1000, 8, 1, 3),
(5, '2008-04-06', 200, 9, 2, 4),
(6, '2008-04-06', 1985, 10, 1, 4),
(7, '2008-04-06', 800, 3, 1, 3),
(8, '2008-04-06', 175, 3, NULL, 3),
(9, '2008-04-07', 1300, 12, NULL, 5),
(10, '2008-04-10', 200, 6, 1, 5),
(11, '2008-04-15', 300, 15, 2, 1),
(12, '2008-04-20', 500, 15, 2, 2),
(13, '2008-04-20', 350, 9, 1, 3),
(14, '2008-04-23', 300, 2, 1, 2),
(15, '2008-04-25', 200, 11, NULL, 2);