SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY ano ASC

SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro'

SELECT * FROM Filmes WHERE Ano = 1997

SELECT * FROM Filmes WHERE Ano >= 2000

SELECT * FROM Filmes WHERE Duracao >= 100 AND Duracao <= 150
ORDER BY Duracao ASC


SELECT
    Ano,
    COUNT(*) QuantidadeFilmes FROM Filmes
GROUP BY
    Ano
ORDER BY
    QuantidadeFilmes DESC;


SELECT * FROM Atores WHERE Genero = 'M'

SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC 


SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio'

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.id = ElencoFilme.IdAtor
