/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/

#CRIA UMA VIEW
CREATE VIEW vendas_ultralar AS 
SELECT 
    p.nome, p.fabricante, p.descricao, iv.quantidade, v.data
FROM 
	produto p,
    item_venda iv,
    venda v
WHERE
		p.id = iv.produto_id
        AND v.id = iv.venda_id
        AND p.fabricante = 'Ultralar'
ORDER BY p.nome;