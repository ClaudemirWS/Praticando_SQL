##### Problema 1

CREATE TABLE pagamento (
    id INT NOT NULL AUTO_INCREMENT,
	tipo_pagamento CHAR(1),
    numero_cartao VARCHAR(16),
    numero_parcelas INT,
    data DATETIME,
    venda_id INT,
    PRIMARY KEY (id)
);

CREATE TABLE envio (
    id INT NOT NULL AUTO_INCREMENT,
	data_envio DATETIME,
    status VARCHAR(45),
    venda_id INT,
    PRIMARY KEY (id)
);

INSERT INTO envio (data_envio, status, venda_id) SELECT data_envio, status, id FROM venda;

INSERT INTO pagamento (tipo_pagamento, numero_cartao, numero_parcelas, data, venda_id) 
SELECT tipo_pagamento, numero_cartao_pagamento, numero_parcelas_pagamento, data_pagamento, id FROM venda;

ALTER TABLE venda DROP COLUMN data_envio;
ALTER TABLE venda DROP COLUMN status;
ALTER TABLE venda DROP COLUMN tipo_pagamento;
ALTER TABLE venda DROP COLUMN numero_cartao_pagamento;
ALTER TABLE venda DROP COLUMN numero_parcelas_pagamento;
ALTER TABLE venda DROP COLUMN data_pagamento;

ALTER TABLE envio ADD FOREIGN KEY envio (venda_id) REFERENCES venda (id);
ALTER TABLE pagamento ADD FOREIGN KEY pagamento (venda_id) REFERENCES venda (id);

##### Problema 2
ALTER TABLE item_venda DROP COLUMN nome_produto;

##### Problema 3
ALTER TABLE item_venda DROP COLUMN subtotal;

CREATE VIEW subtotal_item_venda AS
SELECT 
	v.id AS Venda, iv.quantidade * iv.valor_unitario AS Subtotal
FROM
    item_venda iv, venda v
WHERE
	v.id = iv.venda_id 