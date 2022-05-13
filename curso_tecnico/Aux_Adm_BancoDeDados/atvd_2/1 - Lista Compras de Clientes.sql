/*1 - Crie um stored procedure que receba id de cliente, data inicial e data final e 
que mostre a lista de compras realizadas pelo referido cliente entre as datas informadas 
(incluindo essas datas), mostrando nome do cliente, id da compra, total, nome e quantidade de 
cada produto comprado. No script, inclua o código de criação e uma chamada ao procedure.*/
DELIMITER // 
CREATE procedure lista_compras_clientes(id_cliente INT, data_inicial DATE, data_final DATE)
BEGIN
SELECT 
    C.nome AS 'Cliente',
    V.id AS 'Nº da Compra',
    V.valor_total AS 'Total da Compra',
    IV.nome_produto AS 'Produto',
    IV.quantidade AS 'Quantidade'
FROM
    venda AS V,
    cliente AS C,
    item_venda AS IV
WHERE
    V.cliente_id = id_cliente AND C.id = id_cliente
	AND V.id = IV.venda_id
    AND V.data >= data_inicial AND V.data <= data_final;   
END //
DELIMITER ; 

/*RECEBE ID DO CLIENTE, DATA INICIAL E DATA FINAL DA CONSULTAfuncionario*/
call lista_compras_clientes(1, 20170101, 20221212);
