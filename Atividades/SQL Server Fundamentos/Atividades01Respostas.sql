----------- Lista de Atividades --------------
----------- Base de Dados 'Base de Dados Frutas' --------------

/*
    1. Crie um banco de dados chamado Mercado

	CREATE DATABASE Mercado;


	2. Crie uma tabela chamada CategoriaFruta
		-- As colunas devem ser as categorias de frutas abaixo.
		-- Colunas: CategoriaFrutaId, NomeDaCategoria e popule com as categorias.
				Dica 1. Categorias -> Oleaginosas, Acidas, Doces e Monofagicas


		CREATE TABLE CategoriaFruta (
			CategoriaFrutaId INT PRIMARY KEY,
			NomeDaCategoria  NVARCHAR(100) NOT NULL UNIQUE,
		);

		INSERT INTO CategoriaFruta
		VALUES (1, 'Oleaginosas'), (2, 'Acidas'), (3, 'Doces'), (4, 'Monofagicas')



	3. Crie uma tabela chamada Fruta
		-- A categoria deve ter no minimo 33 registros. (10 para cada categoria, exeto para a monofágicas).
		-- Colunas: FrutaId, Nome, CategoriaFrutaId, PrecoUnitario, NomeCientifico, Vitaminas, CorPrincipal

		CREATE TABLE Fruta (
			FrutaId INT PRIMARY KEY,
			Nome	NVARCHAR(100) NOT NULL UNIQUE,
			CategoriaFrutaId  INT FOREIGN KEY REFERENCES CategoriaFruta(CategoriaFrutaId),
			PrecoUnitario 	  MONEY NOT NULL,
			NomeCientifico    NVARCHAR(100) NOT NULL,
			Vitaminas         NVARCHAR(50), 
			CorPrincipal      NVARCHAR(50),
		);


		INSERT INTO Fruta
		VALUES 
		(1, 'Abacate U', 1, 12, 'Persea americana', 'E, C, K', 'Verde'),
		(2, 'Amendoim 1Kg', 1, 10, 'Arachis hypogaea', 'A, B', 'Marrom'),
		(3, 'Amendoa 1Kg', 1, 15, 'Prunus dulcis', 'D', 'Marrom'),
		(4, 'Avela 1Kg', 1, 20, 'Corylus avellana', 'B, E', 'Marrom'),
		(5, 'Castanha-do-para 1Kg', 1, 40, 'Bertholletia excelsa', 'B, E', 'Marrom'),
		(7, 'Castanha-de-caju 1Kg', 1, 38, 'Anacardium occidentale L', 'B, A, E', 'Marrom'),
		(8, 'Coco U', 1, 4, 'Cocos nucifera', 'B, C', 'Marrom'),
		(9, 'Damasco 1Kg', 1, 47, 'Prunus armeniaca', 'A, C, K', 'Laranja'),
		(10, 'Pistache 1Kg', 1, 83, 'Pistacia vera', 'K', 'Verde');

		INSERT INTO Fruta
		VALUES
		(11, 'Acerola 1Kg', 2, 25, 'Malpighia emarginata', 'A, C', 'Vermelho'),
		(12, 'Amoral 1Kg', 2, 25, 'Morus alba', 'A, C, K', 'Roxo'),
		(13, 'Cupuaçu U', 2, 50, 'Theobroma grandiflorum', 'B, C', 'Marrom'),
		(14, 'Framboesa 1Kg', 2, 36, 'Rubus idaeus', 'A, B, C', 'Vermelho'),
		(15, 'Groselha 1Kg', 2, 30, 'Ribes rubrum', 'A, C, E', 'Vermelho'),
		(16, 'Laranja U', 2, 2.50, 'Citrus X sinensis', 'B, C', 'Laranja'),
		(17, 'Limão U', 2, 1, 'Citrus X limon', 'A, C, B', 'Verde'),
		(18, 'Morango 1Kg', 2, 12, 'Fragaria × ananassa', 'C, B, K', 'Vermelho'),
		(19, 'Tamarindo U', 2, 1.50, 'Tamarindus indica', 'A, C', 'Laranja'),
		(20, 'Uva 1Kg', 2, 10, 'Vitis', 'A, C, E, K', 'Roxo');

		INSERT INTO Fruta
		VALUES
		(21, 'Acai 1L', 3, 22, 'Euterpe oleracea', 'B, C', 'Roxo'),
		(22, 'Banana 1Kg', 3, 13, 'Musa', 'B, C', 'Amarela'),
		(23, 'Caqui U', 3, 2, 'Diospyros kaki', 'A, B, K', 'Roxo'),
		(24, 'Figo U', 3, 3, 'Ficus carica', 'A, B, K, E', 'Roxo'),
		(25, 'Jaca U', 3, 6, 'Artocarpus heterophyllus', 'A, B', 'Amaraleo'),
		(26, 'Jatoba U', 3, 8, 'Hymenaea courbaril', 'C', 'Branco'),
		(27, 'Lichia 1Kg', 3, 22, 'Litchi chinensis', 'C', 'Vermelha'),
		(28, 'Maca U', 3, 4, 'Malus domestica', 'A, C, E', 'Vermelha'),
		(29, 'Mamao U', 3, 8, 'Carica papaya', 'A, B, C', 'Amarelo'),
		(30, 'Manga U', 3, 4, 'Mangifera indica', 'A, C, B', 'Vermelho');

		INSERT INTO Fruta
		VALUES
		(31, 'Melancia U', 4, 20, 'Citrullus lanatus', 'B, C', 'Vermelho'),
		(32, 'Melão U', 4, 13, 'Cucumis melo', 'A, B, C', 'Branco');


	4. Gostaria de um relatório, das frutas que pertencem a categoria Acidas.
		Existe quatro produtos que são vendiddos unitariamente, e seis produtos que são vendidos por Kg.
		A Média de preço por U é ( 13,75 ), e por Kg é ( 23,00 ).
		O produto mais caro vendido unitariamente é 'Cupuaçu U', com um total de $ 50,00
		O produto mais caro vendido por Kg é Framboesa 1Kg, com um total de $ 36,00

		SELECT A.FrutaId, A.Nome, C.NomeDaCategoria, A.PrecoUnitario FROM Fruta A
		INNER JOIN CategoriaFruta C
		ON C.CategoriaFrutaId = A.CategoriaFrutaId
		WHERE C.NomeDaCategoria = 'Acidas' AND A.Nome LIKE '%Kg'
		ORDER BY A.PrecoUnitario DESC

		SELECT C.NomeDaCategoria, AVG(A.PrecoUnitario) FROM Fruta A
		INNER JOIN CategoriaFruta C
		ON C.CategoriaFrutaId = A.CategoriaFrutaId
		WHERE C.NomeDaCategoria = 'Acidas' AND A.Nome LIKE '%U'
		GROUP BY C.NomeDaCategoria



	5. Gostaria de um relatório de todos os preços médios das categorias de frutas.

		Acidas        $ 19,30
		Doces         $ 9,20
		Monofagicas   $ 16,50
		Oleaginosas   $ 29,89
		
		SELECT C.NomeDaCategoria, ROUND(AVG(A.PrecoUnitario), 2) 'Mean Price' FROM Fruta A
		RIGHT JOIN CategoriaFruta C
		ON C.CategoriaFrutaId = A.CategoriaFrutaId
		GROUP BY C.NomeDaCategoria
		ORDER BY C.NomeDaCategoria


	6. Gostaria de saber o total de frutas do tipo Doce.
		O total é de dez frutas da categoria doce.

		SELECT A.NomeDaCategoria, Count(B.FrutaId) FROM CategoriaFruta A
		RIGHT JOIN Fruta B 
		ON B.CategoriaFrutaId = A.CategoriaFrutaId
		WHERE A.NomeDaCategoria = 'Doces'
		GROUP BY A.NomeDaCategoria


	7. Gostaria de adicionar mais algumas frutas na base de dados, poderia adicionar mais duas frutas.
		Frutas adicionadas: Sapoti U, Fruta-pao U.

		INSERT INTO Fruta
		VALUES (
			((SELECT MAX(a.FrutaId)+1 as FruitId FROM Fruta a),
			'Sapoti U', (SELECT CategoriaFrutaId as CategoriaFrutaId
					 FROM CategoriaFruta
					 WHERE NomeDaCategoria = 'Doces'), 
			3.30, 'Manilkara zapota', 'A, B, C', 'Laranja')),
			((SELECT MAX(a.FrutaId)+2 as FruitId FROM Fruta a),
			'Fruta-pao U', (SELECT CategoriaFrutaId as CategoriaFrutaId
					 FROM CategoriaFruta
					 WHERE NomeDaCategoria = 'Doces'), 
			4.75, 'Artocarpus altilis', 'A', 'Verde'));

*/