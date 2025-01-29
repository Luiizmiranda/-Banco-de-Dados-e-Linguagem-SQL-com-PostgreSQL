create table fornecedor (
idfornecedor integer not null, nome varchar (50) not null,

constraint pk_frn_idfornecedor primary key (idfornecedor),
constraint un_frn_nome unique (nome)
);

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores') ; 
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB Máquinas');


create table vendedor (
	idvendedor integer not null,
	nome varchar (50) not null,

	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint un_vnd_nome unique (nome)
);


insert into vendedor (idvendedor, nome) values (1, 'André') ;
insert into vendedor (idvendedor, nome) values (2, 'Alisson') ;
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton') ;
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana') ;