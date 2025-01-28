create table profissao (
    idprofissao integer not null,
    nome varchar (30) not null,

    constraint pk_prf_idprofissao primary key (idprofissao),
    constraint un_prf_nome unique (nome)
);


insert into profissao (idprofissao,nome) values (1, 'Estudante');
insert into profissao (idprofissao,nome) values (2, 'Engenheiro');
insert into profissao (idprofissao,nome) values (3, 'Pedreiro');
insert into profissao (idprofissao,nome) values (4, 'Jornalista');
insert into profissao (idprofissao,nome) values (5, 'Professor');




create table nacionalidade (
    idnacionalidade  integer not null,
    nome varchar (30) not null,

    constraint pk_ncn_idnacionalidade  primary key(idnacionalidade),
    constraint un_ncn_nome unique (nome)
);

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-Americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');



create table complemento (
    idcomplemento integer not null,
    nome varchar(30) not null,

    constraint pk_cpl_idcomplemento primary key (idcomplemento),
    constraint un_cpl_nome unique (nome)
);

insert into complemento (idcomplemento, nome) values (1,'Casa');
insert into complemento (idcomplemento, nome) values (2,'Apartamento');




create table bairro (
    idbairro integer not null,
    nome varchar(30) not null,

    constraint pk_brr_idbairro  primary key (idbairro),
    constraint uni_brr_nome unique (nome)
);


insert into bairro (idbairro, nome) values (1,'Cidade Nova');
insert into bairro (idbairro, nome) values (2,'Centro');
insert into bairro (idbairro, nome) values (3,'São Pedro');
insert into bairro (idbairro, nome) values (4,'Santa Rosa');