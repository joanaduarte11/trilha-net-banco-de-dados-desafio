-- 1 - Buscar o nome e ano dos filmes 

SELECT 
	Nome,
	Ano
	FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 

SELECT 
	Nome,
	Ano,
	Duracao
	FROM Filmes ORDER BY Ano ASC


-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT
	Nome,
	Ano,
	Duracao
	FROM
	Filmes
	WHERE Nome = 'De Volta Para o Futuro'

-- 4 - Buscar os filmes lan�ados em 1997

SELECT
	*
	FROM Filmes WHERE Ano = 1997


-- 5 - Buscar os filmes lan�ados AP�S o ano 2000

SELECT 
	* 
	FROM Filmes WHERE ano > 2000;


-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT 
	* 
	FROM Filmes 
	WHERE duracao > 100 AND duracao < 150 
	ORDER BY duracao ASC;


-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT 
	ano, COUNT(*) 
	AS quantidade 
	FROM Filmes 
	GROUP BY ano 
	ORDER BY SUM(duracao) DESC;

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

SELECT 
	Id,
	PrimeiroNome, 
	UltimoNome, 
	Genero
	FROM Atores 
	WHERE Genero = 'M'


-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
	FROM Atores
	WHERE Genero = 'F'
	ORDER BY PrimeiroNome


-- 10 - Buscar o nome do filme e o g�nero

SELECT f.nome, g.genero 
	FROM Filmes f 
		JOIN FilmesGenero fg ON f.id = fg.idFilme 
		JOIN Generos g ON fg.idGenero = g.id;


-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT f.nome, g.genero 
	FROM Filmes f 
		JOIN FilmesGenero fg ON f.id = fg.idFilme 
		JOIN Generos g ON fg.idGenero = g.id 
	WHERE g.genero = 'Mist�rio';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.nome, a.PrimeiroNome, a.UltimoNome, ef.Papel 
	FROM Filmes f 
		JOIN ElencoFilme ef ON f.id = ef.idFilme 
		JOIN Atores a ON ef.idAtor = a.id;
