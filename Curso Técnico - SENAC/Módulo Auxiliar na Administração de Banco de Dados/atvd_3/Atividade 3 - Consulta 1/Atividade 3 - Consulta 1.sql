/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; 
nome do cliente, cpf e telefone. Ordena-se pela data de venda, as mais recentes primeiro.
**/
#A CRIAÇÃO DESTE INDEX IRÁ FAZER A TABELA RETORNAR SOMENTE AQUELAS COM O TIPO DE PAGAMENTO "D"
CREATE INDEX idx_TipoPagamento ON venda(tipo_pagamento); 

#CRIA UMA VIEW
CREATE VIEW relatorio_venda_dinheiro AS
SELECT 
	v.data, v.valor_total, iv.nome_produto, iv.quantidade, iv.valor_unitario,
    c.nome, c.cpf, c.telefone
FROM
    venda v, item_venda iv, cliente c 
    WHERE
		v.id = iv.venda_id 
        AND c.id = v.cliente_id
        AND v.tipo_pagamento = 'D'
ORDER BY v.data DESC