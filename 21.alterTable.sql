select * from cliente;

--Estudante --> 1,9,10,12,15,17
--Engenheiro --> 2
--Pedreito --> 3
--Jornalista --> 4,5
--Professor --> 6,7,8,13
-- null --> 11,14

alter table cliente drop idprofissao;
alter table cliente add idprofissao integer;-- foreign key 

alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente set idprofissao = 1  where idcliente in (1,9,10,12,15,17);
update cliente set idprofissao = 2  where idcliente = 2;
update cliente set idprofissao = 3  where idcliente = 3;
update cliente set idprofissao = 4  where idcliente in (4,5);
update cliente set idprofissao = 5  where idcliente in (6,7,8,13);)

--complemento
alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer;

alter table cliente add constraint fk_cln_idnacionalidade foreign key 
(idnacionalidade) references nacionalidade (idnacionalidade);

update cliente set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idcliente in (5,7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in(9,13);


alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento(idcomplemento);

--bairro
alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro) 


update cliente set idbairro = 1 where idcliente in (1,12,13);
update cliente set idbairro = 2 where idcliente in (2,3,6,8,9);
update cliente set idbairro = 3 where idcliente in (4,5);
update cliente set idbairro = 4 where idcliente = 7;


select idbairro, * from cliente
 
 
--uf

create  table uf (
	iduf integer not null,
	nome varchar (30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federecao  primary key (iduf),

	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);


insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná','PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais','MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do sul','RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');


select * from uf

--Municipio

create table municipio (
	idmunicipio integer not null,
	nome varchar (30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

insert into municipio (idmunicipio,nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio,nome, iduf) values (2, 'Canoinhas', 2);
insert into municipio (idmunicipio,nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio (idmunicipio,nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio,nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio,nome, iduf) values (6, 'Rio de Janeiro',6);
insert into municipio (idmunicipio,nome, iduf) values (7, 'Uberlândia',4);
insert into municipio (idmunicipio,nome, iduf) values (8, 'Porta Alegre',5);
insert into municipio (idmunicipio,nome, iduf) values (9, 'União da Vitória', 2);

 
alter table cliente  drop municipio;
alter table cliente  drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente set idmunicipio = 2 where idcliente in (3,12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente = 5;
update cliente set idmunicipio = 5 where idcliente in (6,13);
update cliente set idmunicipio = 6 where idcliente = 7;
update cliente set idmunicipio = 7 where idcliente = 8;
update cliente set idmunicipio = 8 where idcliente = 9;
update cliente set idmunicipio = 9 where idcliente in (14, 15);

select * from cliente