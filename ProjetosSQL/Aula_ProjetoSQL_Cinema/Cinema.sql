-- INNER JOIN, corresponde a mesma informacao, so tras oque conhecide
SELECT *
FROM directors as d 
		INNER JOIN movies as m
			ON d.id = m.director_id;
            
SELECT *
FROM movies;

-- LEFT JOIN , importante saber qual esta a direita e a esquerda(Mostra tudo a esquerda), tras oque nao conhecide
SELECT *
FROM movies as m
	LEFT JOIN directors as d 
		ON m.director_id = d.id;
        
        
-- RIGHT JOIN ,importante saber qual esta a direita e a esquerda(Mostra tudo a direita), tras oque nao conhecide
SELECT *
FROM movies as m
	RIGHT JOIN directors as d 
		ON m.director_id = d.id;
        
        
-- 2 Liste todos os filmes e seus tickets vendidos
SELECT *
FROM movies as m
	JOIN tickets as t ON m.id = t.movie_id;
        
-- 3 Liste todos os filmes, seus diretores e os tickets vendidos
SELECT m.name as nome_filme
FROM movies as m
	JOIN directors as d ON d.id = m.director_id
	JOIN tickets as t ON m.id = t.movie_id;
    
-- EXERCICIO 2
-- 2 Liste todos os filmes que têm tickets e seus diretores, incluido os filmes sem tickets
SELECT *
FROM movies as m
	JOIN directors as d ON m.director_id = d.id 
    LEFT JOIN tickets as t ON t.movie_id = m.id;
    
-- 1 Liste todos os filmes que têm tickets e seus diretores, incluindo os diretores sem filmes
SELECT *
FROM movies as m
	JOIN tickets as t ON t.movie_id = m.id
    RIGHT JOIN directors as d ON m.director_id = d.id;
    
    
-- Liste todos os filmes que não tem tickets e seus diretores
SELECT *
FROM movies as m
	LEFT JOIN tickets as t ON m.id = t.movie_id
    JOIN directors as d ON d.id = m.director_id
WHERE t.id IS NULL