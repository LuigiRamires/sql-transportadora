select * from tb_entregas
where id_situacao = 1 or id_situacao = 2 or id_situacao = 3;

-----------------------------------------------------------------

select total_valor from tb_entregas;

-----------------------------------------------------------------

select total_valor, vlr_seguro from tb_entregas
where id_situacao =  6;


SELECT SUM(vlr_seguro) FROM tb_entregas
WHERE id_veiculo = 4
AND (dt_solicitacao_entrega < '2020-03-31');