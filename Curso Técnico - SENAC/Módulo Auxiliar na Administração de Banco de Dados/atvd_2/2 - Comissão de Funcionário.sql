/*Crie uma stored function que receba id de funcionário, data inicial e data final 
e retorne a comissão total desse funcionário no período indicado. No script, inclua 
o código de criação e uma chamada à function.*/
DELIMITER //
CREATE FUNCTION CalculaComissao   ( id_funcionario INT, data_inicial DATE, data_final DATE )
RETURNS VARCHAR(45) DETERMINISTIC 
BEGIN
	DECLARE comissao VARCHAR(45);
	DECLARE total_vendido VARCHAR(45); 
	DECLARE porc_comissao INT;
    
	# SOMA O VALOR TOTAL DE TODAS AS VENDAS QUE O FUNCIONÁRIO FEZ NO INTERVALO DE DATAS
	SET total_vendido = 
    (SELECT SUM(V.valor_total) FROM venda AS V 
		WHERE V.funcionario_id = id_funcionario
			AND V.data >= data_inicial 
				AND V.data <= data_final);
    
    #PEGA O VALOR DA COMISSÃO DE ACORDO COM O CARGO DO FUNCIONÁRIO
	SET porc_comissao = 
    (SELECT C.comissao FROM cargo AS C, funcionario AS F 
		WHERE F.cargo_id = C.id 
			AND F.id = id_funcionario);
    
	# CALCULA A PORCENTAGEM
    IF porc_comissao IS NOT NULL THEN
		SET comissao = total_vendido*porc_comissao/100;
	ELSE
		SET comissao = 'Sem Comissão';
	END IF;
	RETURN comissao;
END; //
DELIMITER ;

# RECEBE ID DO VENDEDOR, DATA INICIAL E DATA FINAL DO SEU PERIODO DE VENDAS
select uc4atividades.CalculaComissao(1, '20210531', '20220514') AS 'Comissão';
