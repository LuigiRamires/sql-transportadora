INSERT INTO tb_funcionarios (cpf_funcionario, rg_funcionario, dt_admissao_funcionario)
VALUES("455.598.468-43", "55.213.760-X", '2018-03-02');

INSERT INTO tb_funcionarios (cpf_funcionario, rg_funcionario, dt_admissao_funcionario, dt_desligamento_funcionario)
VALUES("375.508.687-12", "23.763.894-1", '2009-02-20', '2020-04-18');

INSERT INTO tb_funcionarios (cpf_funcionario, rg_funcionario, dt_admissao_funcionario)
VALUES("693.263.958-13", "93.953.412-X", '2012-06-20');

INSERT INTO tb_funcionarios (cpf_funcionario, rg_funcionario, dt_admissao_funcionario)
VALUES("323.543.746-42", "13.543.153-4", '2016-09-12');

-----------------------------------------------------------------

INSERT INTO tb_cargos (desc_cargo, horas_mes_cargo, salariobase_cargo)
VALUES("Auxiliar Administrativo", 160, 1250);

INSERT INTO tb_cargos (desc_cargo, horas_mes_cargo, salariobase_cargo)
VALUES("Gerente", 160, 7590);

INSERT INTO tb_cargos (desc_cargo, horas_mes_cargo, salariobase_cargo)
VALUES("Motorista", 160, 2320);

INSERT INTO tb_cargos (desc_cargo, horas_mes_cargo, salariobase_cargo)
VALUES("Carregador", 160, 1050);

INSERT INTO tb_cargos (desc_cargo, horas_mes_cargo, salariobase_cargo)
VALUES("Encarregado", 160, 5030);

INSERT INTO tb_cargos (desc_cargo, horas_mes_cargo, salariobase_cargo)
VALUES("Supervisor", 160, 4350);

-----------------------------------------------------------------

INSERT INTO tb_salario (id_cargo, id_funcionario, valor_salariobase, salario_final)
VALUES(1, 2, 1250, (valor_salariobase*1.10));

INSERT INTO tb_salario (id_cargo, id_funcionario, valor_salariobase, salario_final)
VALUES(2, 1, 7590, valor_salariobase);

INSERT INTO tb_salario (id_cargo, id_funcionario, valor_salariobase, salario_final)
VALUES(3, 3, 2320, (valor_salariobase*1.05));

INSERT INTO tb_salario (id_cargo, id_funcionario, valor_salariobase, salario_final)
VALUES(5, 4, 4350, (valor_salariobase*1.02));

-----------------------------------------------------------------

INSERT INTO tb_cliente (cpf_cliente, nome_cliente, email_cliente)
VALUES("123.567.891-23", "Luigi de Oliveira", "luigi.oliveira@empresarial.com");

INSERT INTO tb_cliente (cnpj_cliente, nome_cliente, email_cliente)
VALUES("12.456.91/3456-89", "Matheus Franciscone da Cunha", "matheus.dacunha@onlybrains.com");

INSERT INTO tb_cliente (cnpj_cliente, nome_cliente, email_cliente)
VALUES("12.456.91/3456-89", "Matheus Franciscone da Cunha", "matheus.dacunha@onlybrains.com");

INSERT INTO tb_cliente (cpf_cliente, nome_cliente, email_cliente)
VALUES("384.431.576-34", "Rafael Moreira", "rafa.moreira@mano.com");

-----------------------------------------------------------------

INSERT INTO tb_telefone (ddd_telefone, numero_telefone)
VALUES(11, "92345-6789");

update tb_telefone
set id_cliente_telefone = 1
where id_telefone = 1;

INSERT INTO tb_telefone (ddd_telefone, numero_telefone)
VALUES(11, "91456-7890");

update tb_telefone
set id_cliente_telefone = 1
where id_telefone = 2;

INSERT INTO tb_telefone (ddd_telefone, numero_telefone)
VALUES(11, "91234-4677");

update tb_telefone
set id_cliente_telefone = 4
where id_telefone = 3;

INSERT INTO tb_telefone (ddd_telefone, numero_telefone)
VALUES(11, "95105-0959");

update tb_telefone
set id_cliente_telefone = 2
where id_telefone = 4;

-----------------------------------------------------------------

INSERT INTO tb_tipo_logradouro (desc_logradouro)
VALUES("Vila");

INSERT INTO tb_tipo_logradouro (desc_logradouro)
VALUES("Lago");

INSERT INTO tb_tipo_logradouro (desc_logradouro)
VALUES("Jardim");

INSERT INTO tb_tipo_logradouro (desc_logradouro)
VALUES("Parque");

-----------------------------------------------------------------

INSERT INTO tb_estado (abrv_uf)
VALUES("SP");

INSERT INTO tb_estado (abrv_uf)
VALUES("RJ");

INSERT INTO tb_estado (abrv_uf)
VALUES("MG");

INSERT INTO tb_estado (abrv_uf)
VALUES("ES");

-----------------------------------------------------------------

insert into tb_cidade (id_estado, nm_cidade)
values(1, "Guarulhos");

insert into tb_cidade (id_estado, nm_cidade)
values(1, "São Paulo");

insert into tb_cidade (id_estado, nm_cidade)
values(4, "Belo Horizonte");

insert into tb_cidade (id_estado, nm_cidade)
values(3, "Serra");

-----------------------------------------------------------------

insert into tb_bairro (id_cidade, nm_bairro)
values(2, "São Paulo");

insert into tb_bairro (id_cidade, nm_bairro)
values(1, "Galvão");

insert into tb_bairro (id_cidade, nm_bairro)
values(1, "CECAP");

insert into tb_bairro (id_cidade, nm_bairro)
values(1, "Pimentas");

-----------------------------------------------------------------

insert into tb_endereco (id_cliente, id_tp_logradouro, id_bairro, logradouro_endereco, numero_endereco, complemento_endereco, id_estado, id_cidade, cep_endereco, pontoreferencia_endereco)
values(2, 3, 3, "Rua Maria Antonieta de Campus Arruda", "2379", "Bloco 03 Apartamento 03", 1, 1, "07260-500", "Park Center");

insert into tb_endereco (id_cliente, id_tp_logradouro, id_bairro, logradouro_endereco, numero_endereco, complemento_endereco, id_estado, id_cidade, cep_endereco, pontoreferencia_endereco)
values(2, 1, 2, "Rua Capitão José Moreira", "22", "Casa 02", 1, 1, "07847-530", "Supermercado Quero Mais");

insert into tb_endereco (id_cliente, id_tp_logradouro, id_bairro, logradouro_endereco, numero_endereco, complemento_endereco, id_estado, id_cidade, cep_endereco, pontoreferencia_endereco)
values(2, 3, 3, "Rua Jacutinga", "189", "Caixa de correio 2", 1, 1, "07269-510", "Gás do Brás");

insert into tb_endereco (id_cliente, id_tp_logradouro, id_bairro, logradouro_endereco, numero_endereco, complemento_endereco, id_estado, id_cidade, cep_endereco, pontoreferencia_endereco)
values(2, 1, 2, "Rua Dores do Indaía", "163", "Bloco 3 Apartamento 98", 1, 1, "07266-876", "Na esquina do Quero mais");

-----------------------------------------------------------------

insert into tb_tp_veiculo (desc_tp_veiculo)
values("Carreta");

insert into tb_tp_veiculo (desc_tp_veiculo)
values("Caminhão baú");

insert into tb_tp_veiculo (desc_tp_veiculo)
values("VUC");

insert into tb_tp_veiculo (desc_tp_veiculo)
values("Treminhão");

-----------------------------------------------------------------

insert into tb_marca_veiculo (desc_marca_veiculo)
values("Ford");

insert into tb_marca_veiculo (desc_marca_veiculo)
values("GM");

insert into tb_marca_veiculo (desc_marca_veiculo)
values("Iveco");

insert into tb_marca_veiculo (desc_marca_veiculo)
values("Scania");

-----------------------------------------------------------------

insert into tb_modelo_veiculo (nm_modelo, id_marca_veiculo, id_tp_veiculo)
values("P220-500", 4, 1);

insert into tb_modelo_veiculo (nm_modelo, id_marca_veiculo, id_tp_veiculo)
values("Stralis", 3, 1);

insert into tb_modelo_veiculo (nm_modelo, id_marca_veiculo, id_tp_veiculo)
values("CARGO C816", 1, 1);

insert into tb_modelo_veiculo (nm_modelo, id_marca_veiculo, id_tp_veiculo)
values("14190", 2, 1);

-----------------------------------------------------------------

insert into tb_veiculo (id_marca_veiculo, id_tp_veiculo, id_modelo_veiculo, placa_veiculo, capacidade_veiculo, disponibilidade_veiculo)
values(4, 1, 1, "ETF-5767", 320.5, 'S');

insert into tb_veiculo (id_marca_veiculo, id_tp_veiculo, id_modelo_veiculo, placa_veiculo, capacidade_veiculo, disponibilidade_veiculo)
values(3, 1, 2, "KXF-5877", 320.5, 'S');

insert into tb_veiculo (id_marca_veiculo, id_tp_veiculo, id_modelo_veiculo, placa_veiculo, capacidade_veiculo, disponibilidade_veiculo)
values(1, 1, 3, "KKA-9332", 320.5, 'N');

insert into tb_veiculo (id_marca_veiculo, id_tp_veiculo, id_modelo_veiculo, placa_veiculo, capacidade_veiculo, disponibilidade_veiculo)
values(2, 1, 4, "HGX-3102", 320.5, 'S');

-----------------------------------------------------------------

insert into tb_situacao_entrega (tipo_situacao)
values("Pendente");

insert into tb_situacao_entrega (tipo_situacao)
values("Em deslocamento");

insert into tb_situacao_entrega (tipo_situacao)
values("Atraso");

insert into tb_situacao_entrega (tipo_situacao)
values("Entregue");

insert into tb_situacao_entrega (tipo_situacao)
values("Cancelada");

insert into tb_situacao_entrega (tipo_situacao)
values("Perda");

insert into tb_situacao_entrega (tipo_situacao)
values("Danificada");

-----------------------------------------------------------------

alter table tb_entregas
modify dt_entrega date null;

insert into tb_entregas (id_cliente_entregas, id_veiculo, dt_solicitacao_entrega, vlr_encomenda, vlr_transporte, vlr_frete, vlr_seguro, id_situacao,  total_valor)
values(1, 1, "2019-12-20", 7600.00, 2200.00, 3500.00, 1500.00, 2, (vlr_encomenda + vlr_transporte + vlr_frete + vlr_seguro) );

insert into tb_entregas (id_cliente_entregas, id_veiculo, dt_solicitacao_entrega, vlr_encomenda, vlr_transporte, vlr_frete, vlr_seguro, id_situacao,  total_valor)
values(1, 1, "2020-05-03", 7600.00, 2200.00, 3500.00, 1500.00, 4, (vlr_encomenda + vlr_transporte + vlr_frete + vlr_seguro) );

insert into tb_entregas (id_cliente_entregas, id_veiculo, dt_solicitacao_entrega, vlr_encomenda, vlr_transporte, vlr_frete, vlr_seguro, id_situacao, total_valor)
values(1, 2, "2020-03-14", 2600.00, 2200.00, 850.00, 5000.00, 6, (vlr_encomenda + vlr_transporte + vlr_frete + vlr_seguro));

insert into tb_entregas (id_cliente_entregas, id_veiculo, dt_solicitacao_entrega, vlr_encomenda, vlr_transporte, vlr_frete, vlr_seguro, id_situacao, total_valor)
values(3, 4, "2020-03-14", 2600.00, 2200.00, 850.00, 5000.00, 6, (vlr_encomenda + vlr_transporte + vlr_frete + vlr_seguro));

-----------------------------------------------------------------

insert into tb_funcionario_entrega (id_funcionario, id_entrega)
values(3, 1);

insert into tb_funcionario_entrega (id_funcionario, id_entrega)
values(3, 2);

insert into tb_funcionario_entrega (id_funcionario, id_entrega)
values(3, 3);

insert into tb_funcionario_entrega (id_funcionario, id_entrega)
values(3, 4);