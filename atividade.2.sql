USE empresa_xpto;

#1-Consulte todas as colunas de todos os funcionários;
SELECT * FROM funcionarios;

#2-Consulte somente as colunas nome, cargo e salário de todos os funcionários.
SELECT Nome, Cargo , Salario FROM funcionarios;

#3-Consulte as colunas salario e cargo de todos os funcionários
SELECT Salario, Cargo FROM funcionarios;

#4-Consulte todas as colunas dos funcionários que são do cargo de Arquiteto de Software
SELECT * FROM funcionarios WHERE cargo = "Arquiteto de Software";

#5-Consulte as colunas nome, cargo e salario dos funcionários que são Gerente de projetos
SELECT Nome, Cargo, Salario FROM funcionarios WHERE cargo = "Gerente de projetos";

#6-Consulte as colunas salario e cargo e salario dos funcionários que são Professor;
SELECT Cargo, Salario FROM funcionarios WHERE cargo = "Professor";

#7-Consulte nome cargo e salario de quem recebe acima de 10000 reais.
SELECT Nome,Cargo,Salario FROM funcionarios WHERE Salario > 10000;

#8-Consulte nome de quem recebe abaixo do salário mínimo no estado do RJ
select nome from funcionarios where salario  < 1320;

#9-Consulte os cargos que o salário é maior ou igual a 28 mil reais
SELECT Cargo, Salario FROM  funcionarios WHERE Salario >= 28.000;

#10-Procure no Sistema a funcionária Monica Yates
SELECT * FROM Funcionarios WHERE Nome ='Monica Yates';

#11-Procure no Sistema o cargo e salario da funcionária Jennifer Gardner;
SELECT Cargo, Salario FROM Funcionarios WHERE nome='Jennifer Gardner';

#12-Qual é a data de nascimento do Russell Cole?
SELECT nome, Nascimento FROM funcionarios WHERE nome= 'Russell Cole';

#13-Qual o nome e o cargo do funcionário com CPF 84716339531?
SELECT Nome, Cargo FROM funcionarios WHERE cpf='84716339531';

#14-Retorne Nome Completo, Salário e Data de nascimento dos funcionários que nasceram de 1998 em diante
SELECT Nome as 'Nome Completo',
Salario as 'Salário',
Nascimento as 'Data de Nascimento' FROM funcionarios WHERE Nascimento > 1998 ;

#15-Consulte todas as colunas de todos os funcionários com os funcionários em ordem alfabética
SELECT * FROM funcionarios ORDER BY nome ASC;

#16-Consulte somente as colunas nome, cargo e salário de todos os funcionários ordenado pelo salário do maior para menor;
SELECT Nome as 'Nome Completo',Cargo, Salario as 'Salário'
FROM funcionarios 
ORDER BY Salario desc;

#17-Consulte as colunas salario e cargo de todos os funcionários ordenado do mais velho até o mais novo.
SELECT Cargo, Salario as 'Salário' , Nascimento as 'Data de Nascimento' 
FROM funcionarios 
ORDER BY nascimento asc;

#18-Consulte o nome completo e cargo dos 5 funcionários com maior salário
SELECT Nome as 'Nome Completo', Cargo 
FROM funcionarios 
ORDER BY Salario DESC limit 5;

#19-Qual o nome do funcionário mais velho da empresa?
SELECT Nome as 'Nome Completo' 
FROM funcionarios 
ORDER BY Nascimento asc limit 1;

#20-Quais são os 10 menores salários da empresa?
SELECT Salario 
FROM funcionarios 
ORDER BY salario asc limit 10;


SELECT Nome,Salario, Cargo FROM funcionarios WHERE Cargo ='Professor' ORDER BY Nome ASC;

SELECT Nome,Salario,Cargo FROM funcionarios WHERE Cargo ='Medico' ORDER BY salario desc limit 5;

SELECT Nome, CPF FROM funcionarios WHERE Cargo ='Recepcionista' ORDER BY salario asc limit 1;
