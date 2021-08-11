----------- Lista de Atividades
----------- Base de Dados 'PrimeiraBaseDeDados'
----------- Não existe apenas uma forma de responder as perguntas!!

/*
    1. Qual a primeira  pessoa que aparece com o genero masculino, em uma ordenação decresçente?

--- SELECT * FROM Pessoa
--- WHERE Genero = 1
--- ORDER BY Genero DESC


    2. Qual a primeira  pessoa que aparece com o genero feminino, em uma ordenação decresçente?

--- SELECT * FROM Pessoa
--- WHERE Genero = 0
--- ORDER BY Genero DESC


    3. Qual é o total de pessoas que estão registradas na base de dados?

--- Não mostrei isso ainda, mas fica de curiosidade para o topico SQL Server Fundamentos ;)
--- SELECT COUNT(Nome)FROM Pessoa


    4. Queria um relatória das pessoas do sexo masculino mais velhas registradas na base de dados.

--- SELECT * FROM Pessoa
--- WHERE Genero = 1 AND DataNascimento < 20000101
--- ORDER BY DataNascimento ASC


    5. Atualize o nome de 'José' para 'Carlos'.

--- UPDATE Pessoa
--- SET Nome = 'Carlos'
--- WHERE Nome = 'José'


*/