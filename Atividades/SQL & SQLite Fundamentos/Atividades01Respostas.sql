----------- Lista de Respostas --------------
----------- Base de Dados 'PrimeiraBaseDeDados' --------------

/*
    1. Crie um Diagrama no Paint mesmo contendo apenas a Tabela Carro e as seguintes colunas:
        - Placa           Texto Chave Primária Não Nulo Única.
        - Modelo          Texto Não Nulo.
        - Classificacao   Texto Não Nulo.
        - Cor             Texto Não Nulo.
        - Preco           Inteiro Não Nulo.
        
     https://cdn.discordapp.com/attachments/888852782440910868/912163241478750248/Img.png
     
     
     CREATE TABLE "Carro" (
	    "Placa"	  TEXT NOT NULL UNIQUE,
	    "Modelo"  TEXT NOT NULL,
	    "Classificacao"	TEXT NOT NULL,
	    "Cor"	 TEXT NOT NULL,
	    "Preco"	 INTEGER NOT NULL,
	    PRIMARY  KEY("Placa")
    );
        
        
    2. Insira dados na tabela que você acabou de criar, use a internet para pegar as devidas informações.
        2.1. Requisitos: 
            - Deve ter pelo menos dois veiculos com a cor igual a "Azul".
            - Deve ter preços coerentes para responder o exercicio 3.
            - Deve ter pelo menos 5 registros na base de dados.
            
        INSERT INTO Carro
        VALUES
        ("ABC-0001", "Uno 2019", "Automovel", "Preto", 29000),
        ("ABC-0002", "Gol Chaleira", "Automovel", "Cinza", 17000),
        ("ABC-0003", "Palio", "Automovel", "Azul", 19000),
        ("ABC-0004", "Scania R450", "Caminhao", "Azul", 55000),
        ("ABC-0005", "DAF XF 105", "Caminhao", "Ciano", 70000);
    
    3. Realize um Relatório respondendo as seguintes perguntas: 
        3.1. Qual é a primeira Classificação de veiculos que aparece com a cor Azul, em uma ordenação decresçente?
        3.2. Qual é a primeiro Modelo que aparece com o Preço , em uma ordenação decresçente?
        3.3. Qual é o total de carros que estão registradas na base de dados?
        3.4. Qual é a placa dos automóveis dos seguintes Id (1, 3, 5) ?
        
    4. Atualize algum registro de veiculo atualizando sua Placa para "MNB-5050".
    5. Atualize a cor do veículo com a placa "MNB-5050" para "Azul".
    6. Atualize a classificação do veiculo com a placa "MNB-5050" para o tipo "caminhao-trator"
        
        -- Obrigado por realizar os exercicios, qualquer dívida basta consultar as respostas.
*/
