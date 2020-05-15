create database projetotransportadora;
use projetotransportadora;
-----------------------------------------------------------------
-------------------- CRIAÇÃO DE TABELAS -------------------------
-----------------------------------------------------------------

create table tb_funcionarios 
(id_funcionario int not null auto_increment primary key, 
cpf_funcionario varchar(14) not null,
rg_funcionario varchar(12) not null,
dt_admissao_funcionario date not null,
dt_desligamento_funcionario date);

create table tb_cargos
(id_cargo int not null auto_increment primary key,
desc_cargo varchar(60) not null,
horas_mes_cargo int not null,
salariobase_cargo int not null);

create table tb_salario
(id_salario int not null auto_increment primary key,
id_cargo int not null,
valor_salariobase double not null,
salario_final double);

ALTER TABLE tb_salario
  ADD id_funcionario int not null
    AFTER id_cargo;

-----------------------------------------------------------------

create table tb_cliente
(id_cliente int not null auto_increment primary key,
cpf_cliente varchar(14),
cnpj_cliente varchar(17),
nome_cliente varchar(60) not null,
email_cliente varchar(60) not null,
id_telefone int);

alter table tb_cliente
drop foreign key id_cliente_telefone;
 
alter table tb_cliente
drop column id_telefone;

create table tb_telefone
(id_telefone int not null auto_increment primary key,
id_cliente int not null,
ddd_telefone int not null,
numero_telefone varchar(10) not null);

alter table tb_telefone
add id_cliente int not null;

-----------------------------------------------------------------

create table tb_endereco
(id_endereco int not null auto_increment primary key,
id_cliente int not null,
tp_logradouro_endereco int not null,
logradouro_endereco varchar(100) not null,
numero_endereco varchar (5) not null, 
complemento_endereco varchar(30) not null,
id_estado int not null,
id_cidade int not null,
id_bairro int not null,
cep_endereco varchar(9) not null, 
pontoreferencia_endereco varchar(60) not null); 

alter table tb_endereco
rename column tp_logradouro_endereco to id_tp_logradouro;

create table tb_tipo_logradouro
(id_tp_logradouro int not null auto_increment primary key,
desc_logradouro varchar(60) not null);

create table tb_estado
(id_estado int not null auto_increment primary key,
abrv_uf varchar(2) not null);

alter table tb_estado
drop column id_cidade;

create table tb_cidade
(id_cidade int not null auto_increment primary key,
id_estado int not null,
nm_cidade varchar(30) not null);

alter table tb_cidade
drop column id_bairro;

create table tb_bairro
(id_bairro int not null auto_increment primary key,
id_cidade int not null,
nm_bairro varchar(30) not null);

-----------------------------------------------------------------

create table tb_veiculo
(id_veiculo int not null auto_increment primary key,
id_marca_veiculo int not null,
id_tp_veiculo int not null, 
id_mod_veiculo varchar(60) not null,
placa_veiculo varchar(8) not null,
capacidade_veiculo double not null,
disponibilidade_veiculo char(1) not null);

ALTER TABLE tb_veiculo
drop id_mod_veiculo;

alter table tb_veiculo
add column id_modelo_veiculo int not null;


create table tb_marca_veiculo
(id_marca_veiculo int not null auto_increment primary key,
desc_marca_veiculo varchar(60) not null);

create table tb_tp_veiculo
(id_tp_veiculo int not null auto_increment primary key,
desc_tp_veiculo varchar(60) not null);

create table tb_modelo_veiculo
(id_modelo_veiculo int not null auto_increment primary key,
nm_modelo varchar(30));

alter table tb_modelo_veiculo
add id_marca_veiculo int not null;
alter table tb_modelo_veiculo
add id_tp_veiculo int not null;

-----------------------------------------------------------------

create table tb_entregas
(id_entregas int not null auto_increment primary key,
id_cliente int not null,
id_veiculo int not null,
dt_solicitacao_entrega date not null,
dt_entrega date not null, 
id_funcionario int not null,
vlr_encomenda decimal not null,
vlr_transporte decimal not null,
vlr_frete decimal not null,
vlr_seguro decimal not null,
id_situacao int not null);

alter table tb_entregas
add total_valor double;

alter table tb_entregas
rename column id_cliente to id_cliente_entregas;

alter table tb_entregas
rename column id_funcionario to id_funcionario_entregas;

create table tb_situacao_entrega
(id_situacao int not null auto_increment primary key,
tipo_situacao varchar(40) not null);

create table tb_funcionario_entrega
(id_funcionario_entrega int not null auto_increment primary key,
id_funcionario int not null,
id_entrega int not null);

-----------------------------------------------------------------
-------------------- CHAVES ESTRANGEIRAS ------------------------
-----------------------------------------------------------------

ALTER TABLE tb_salario
ADD CONSTRAINT id_cargo_salario
FOREIGN KEY (id_cargo)
REFERENCES tb_cargos (id_cargo);

ALTER TABLE tb_salario
ADD CONSTRAINT id_funcionario_salario
FOREIGN KEY (id_funcionario)
REFERENCES tb_funcionarios (id_funcionario);

-----------------------------------------------------------------

ALTER TABLE tb_telefone
ADD CONSTRAINT id_telefone_cliente
FOREIGN KEY (id_cliente_telefone)
REFERENCES tb_cliente (id_cliente);

-----------------------------------------------------------------

ALTER TABLE tb_endereco
ADD CONSTRAINT id_cliente_endereco
FOREIGN KEY (id_cliente)
REFERENCES tb_cliente (id_cliente);

ALTER TABLE tb_endereco
ADD CONSTRAINT id_tp_logradouro_endereco
FOREIGN KEY (id_tp_logradouro)
REFERENCES tb_tipo_logradouro (id_tp_logradouro);

ALTER TABLE tb_endereco
ADD CONSTRAINT id_estado_endereco
FOREIGN KEY (id_estado)
REFERENCES tb_estado (id_estado);

ALTER TABLE tb_estado
ADD CONSTRAINT id_cidade_cidade
FOREIGN KEY (id_cidade)
REFERENCES tb_cidade (id_cidade);

ALTER TABLE tb_endereco
ADD CONSTRAINT id_cidade_endereco
FOREIGN KEY (id_cidade)
REFERENCES tb_cidade (id_cidade);

ALTER TABLE tb_cidade
ADD CONSTRAINT id_estado_cidade
FOREIGN KEY (id_estado)
REFERENCES tb_estado (id_estado);

ALTER TABLE tb_endereco
ADD CONSTRAINT id_bairro_endereco
FOREIGN KEY (id_bairro)
REFERENCES tb_bairro (id_bairro);

ALTER TABLE tb_cidade
ADD CONSTRAINT id_bairro_cidade
FOREIGN KEY (id_bairro)
REFERENCES tb_bairro (id_bairro);

ALTER TABLE tb_bairro
ADD CONSTRAINT id_cidade_bairro
FOREIGN KEY (id_cidade)
REFERENCES tb_cidade (id_cidade);

-----------------------------------------------------------------

ALTER TABLE tb_veiculo
ADD CONSTRAINT id_marca_veiculo
FOREIGN KEY (id_marca_veiculo)
REFERENCES tb_marca_veiculo (id_marca_veiculo);

ALTER TABLE tb_veiculo
ADD CONSTRAINT id_tp_veiculo
FOREIGN KEY (id_tp_veiculo)
REFERENCES tb_tp_veiculo (id_tp_veiculo);

ALTER TABLE tb_veiculo
ADD CONSTRAINT id_modelo_veiculo
FOREIGN KEY (id_modelo_veiculo)
REFERENCES tb_modelo_veiculo (id_modelo_veiculo);

ALTER TABLE tb_modelo_veiculo
ADD CONSTRAINT id_marca_mod_veiculo
FOREIGN KEY (id_marca_veiculo)
REFERENCES tb_marca_veiculo (id_marca_veiculo);

ALTER TABLE tb_modelo_veiculo
ADD CONSTRAINT id_tipo_mod_veiculo
FOREIGN KEY (id_tp_veiculo)
REFERENCES tb_tp_veiculo (id_tp_veiculo);


-----------------------------------------------------------------

ALTER TABLE tb_entregas
ADD CONSTRAINT id_cliente
FOREIGN KEY (id_cliente_entregas)
REFERENCES tb_cliente (id_cliente);

ALTER TABLE tb_entregas
ADD CONSTRAINT id_veiculo_entregas
FOREIGN KEY (id_veiculo)
REFERENCES tb_veiculo (id_veiculo);

ALTER TABLE tb_entregas
ADD CONSTRAINT id_funcionario_entregas
FOREIGN KEY (id_funcionario_entregas)
REFERENCES tb_funcionarios (id_funcionario);

ALTER TABLE tb_entregas
ADD CONSTRAINT id_situacao_entregas
FOREIGN KEY (id_situacao)
REFERENCES tb_situacao_entrega (id_situacao);

ALTER TABLE tb_funcionario_entrega
ADD CONSTRAINT id_funcionario
FOREIGN KEY (id_funcionario)
REFERENCES tb_funcionarios (id_funcionario);

ALTER TABLE tb_funcionario_entrega
ADD CONSTRAINT id_entrega
FOREIGN KEY (id_entrega)
REFERENCES tb_entregas (id_entregas);