-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe(id_salario,salario, nivel)
VALUES
(1, 2300, 'estagiário'),
(2, 3400, 'desenvolvedor jr'),
(3, 4600, 'desenvolvedor pleno');

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
INSERT INTO salario_classe(salario, nivel)
VALUES
(6200, 'desenvolvedor senior');