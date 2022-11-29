/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/
#A CRIAÇÃO DESTE INDEX SUBISTITUI O GROUP BY
CREATE INDEX idx_nome ON cliente(nome);

#CRIA UMA VIEW
CREATE VIEW vendas_cliente AS 
SELECT 
    c.nome AS NomeCliente, p.nome AS NomeProduto, iv.subtotal AS Subtotal, iv.quantidade AS Quantidade
FROM
    produto p,
    item_venda iv,
    venda v,
    cliente c
WHERE
	p.id = iv.produto_id
	AND v.id = iv.venda_id
	AND c.id = v.cliente_id