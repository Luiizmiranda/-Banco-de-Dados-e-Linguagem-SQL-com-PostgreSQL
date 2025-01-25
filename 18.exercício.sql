1. Insira os dados abaixo na tabela de clientes

R: insert into cliente (idcliente,nome,cpf,rg,data_nascimento,genero,profissao,municipio,uf)
values (16,'Maicon','12349596421','1234','1965-10-10','F','Empresario','Florianópolis','PR');

R: insert into cliente (idcliente,nome,rg,genero,profissao,nacionalidade,logradouro,numero,complemento,bairro,municipio,uf)
values (17,'Getúlio','4631','F','Estudante','Brasileira','Rua Central','343','Apartamento','Centro','Curitiba','SC');

R: insert into cliente (idcliente,nome,genero, profissao,nacionalidade,numero,complemento)
values (18,'Sandra','M','Professor','Italiana','12','Bloco A');

2. Altere os dados do cliente Maicon
a. O CPF para 45390569432
b. O gênero para M
c. A nacionalidade para Brasileira
d. O UF para SC
R:update cliente set cpf = '5390569432',genero = 'M',nacionalidade = 'Brasileira',uf = 'SC' where idcliente = 16;

3. Altere os dados do cliente Getúlio
a. A data de nascimento para 01/04/1978
b. O gênero para M
R:update cliente set cpf = '5390569432',genero = 'M',nacionalidade = 'Brasileira',uf = 'SC' where idcliente = 16;

4. Altere os dados da cliente Sandra
a. O gênero para F
b. A profissão para Professora
c. O número para 123
R:update cliente set data_nascimento = '1978-04-04', genero = 'M' where idcliente = 17;

5. Apague o cliente Maicon

R: delete from cliente  where idcliente = 16;

6. Apague a cliente Sandra

R: delete from cliente where idcliente = 18;