/*5. Todos os dados das internações em seus respectivos quartos, 
calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.*/
SELECT I.*,
(SELECT SUM((I.DataAlta - I.DataEntrada) * T.ValorDiaria) FROM tipo_quarto 
AS T WHERE T.idTipoQuarto = I.idTipo_Quarto) AS PreçoTotal
FROM internacao AS I;