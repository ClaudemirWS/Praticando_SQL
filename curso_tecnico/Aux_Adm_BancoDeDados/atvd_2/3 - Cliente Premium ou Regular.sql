/*Crie uma stored function que receba id de cliente e retorne se o cliente é “PREMIUM” 
ou “REGULAR”. Um cliente é “PREMIUM” se já realizou mais de R$ 10 mil em compras nos 
últimos dois anos. Um cliente é “REGULAR” se ao contrário. No script, inclua o código 
de criação e uma chamada à function. */

DELIMITER //
CREATE FUNCTION TipoCliente ( id_cliente INT )
RETURNS VARCHAR(45) DETERMINISTIC 
BEGIN
	DECLARE tipo_cliente VARCHAR(45);
    DECLARE total_compras INT;
    
	# SOMA O VALOR TOTAL DAS COMPRAS DO CLIENTE NOS ULTIMOS 2 ANOS
	SET total_compras = 
    (SELECT SUM(V.valor_total) FROM venda AS V 
		WHERE V.cliente_id = id_cliente
        AND V.data >= 20200101 
		AND V.data <= 20220101);
    
	# INFORMA O TIPO DO CLIENTE
    IF total_compras > 10000 THEN
		SET tipo_cliente = "PREMIUM";
	ELSE
		SET tipo_cliente = "REGULAR";
	END IF;
	RETURN tipo_cliente;
END; //
DELIMITER ;

select uc4atividades.TipoCliente(200) AS 'Cliente Premium/Regular';