-- 1
SELECT Nome, Ano FROM Filmes;

-- 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE 'De Volta para o Futuro';

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT * FROM Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao ASC;

-- 7
SELECT Ano, COUNT(*) AS Quantidade, SUM(Duracao) AS DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC;

-- 8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M';

-- 9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F';

-- 10
SELECT f.Nome, g.Genero FROM Filmes f 
JOIN FilmesGeneros fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- 11
SELECT f.Nome, g.Genero FROM Filmes f 
JOIN FilmesGeneros fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;