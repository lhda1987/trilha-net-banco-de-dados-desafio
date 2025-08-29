-- 1
SELECT 
Nome, 
Ano 
FROM Filmes

-- 2
SELECT 
Nome, 
Ano 
FROM Filmes
ORDER BY Ano

-- 3
SELECT * FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

-- 4
SELECT * FROM Filmes WHERE Ano = 1997

-- 5
SELECT * FROM Filmes WHERE Ano > 2000

-- 6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT
Ano,
COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT
PrimeiroNome,
UltimoNome,
Genero
FROM Atores WHERE Genero = 'M' 

-- 9
SELECT
PrimeiroNome,
UltimoNome,
Genero
FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
Filmes.Nome, 
Generos.Genero
FROM Filmes
JOIN FilmesGenero ON filmes.id = FilmesGenero.idFilme
JOIN generos ON generos.id = FilmesGenero.idGenero;

-- 11
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
JOIN Generos ON Generos.id = FilmesGenero.idGenero
WHERE Generos.Genero = 'Mistério';


-- 12
SELECT
Filmes.Nome, 
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
FROM Filmes 
JOIN ElencoFilme ON filmes.id = ElencoFilme.idFilme
JOIN Atores ON Atores.id = ElencoFilme.idAtor
