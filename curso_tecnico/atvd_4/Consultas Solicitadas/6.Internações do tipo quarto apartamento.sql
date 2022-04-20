/*6. Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.*/
SELECT I.DataEntrada, I.DataAlta, I.Procedimento, I.id_Quarto AS NumeroQuarto
FROM internacao AS I WHERE (SELECT T.idTipoQuarto = I.idTipo_Quarto FROM tipo_quarto 
AS T WHERE T.idTipoQuarto = 1);