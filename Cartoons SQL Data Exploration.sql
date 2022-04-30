--  An:Animation,  Com:Comedy,  Fam:Family,  Adv:Adventure,  Short:Short,  Cr:Crime,  Act:Action,  Dram:Drama
--  Doc:Documentary,  Fantas:Fantasy,  Musical:Musical,  SciFi:Sci-Fi,  TalkShow:TalkShow

SELECT * FROM Portfolio3..cartoons$;

--Order by release date
SELECT * FROM Portfolio3..cartoons$
ORDER BY release_date;

--Order by imdb rating
SELECT * FROM Portfolio3..cartoons$
ORDER BY imdb_score DESC;

--Top 10 highest rated cartoons #
SELECT TOP 10 cartoon_names AS Cartoons,imdb_score AS Rating FROM Portfolio3..cartoons$
ORDER BY imdb_score DESC;

--Top 10 lowest rated cartoons #
SELECT TOP 10 cartoon_names AS Cartoons,imdb_score AS Rating FROM Portfolio3..cartoons$
ORDER BY imdb_score ASC;

--Cartoons released before 2000 
SELECT * FROM Portfolio3..cartoons$
WHERE release_date <2000
ORDER BY release_date;

--Top 10 rated cartoons released before 2000 
SELECT TOP 10 * FROM Portfolio3..cartoons$
WHERE release_date <2000
ORDER BY imdb_score DESC;

--Cartoons with genre Comedy 
SELECT * FROM Portfolio3..cartoons$
WHERE genre LIKE '%Com%'
ORDER BY imdb_score DESC; 

--SciFi cartoons
SELECT * FROM Portfolio3..cartoons$
WHERE genre LIKE '%SciFi%'
ORDER BY imdb_score DESC;

--Crime Cartoons
SELECT * FROM Portfolio3..cartoons$
WHERE genre LIKE '%Cr%'
ORDER BY imdb_score DESC;

--Musical cartoons
SELECT * FROM Portfolio3..cartoons$
WHERE genre LIKE '%Musical%'
ORDER BY imdb_score DESC;

--Top 10 Action Shows #
SELECT TOP 10 * FROM Portfolio3..cartoons$
WHERE genre LIKE '%Act%'
ORDER BY imdb_score DESC;

--Top 10 comedy cartoons #
SELECT TOP 10 * FROM Portfolio3..cartoons$
WHERE genre LIKE '%Com%'
ORDER BY imdb_score DESC; 

--Top 10 Adventure Cartoons #
SELECT TOP 10 * FROM Portfolio3..cartoons$
WHERE genre LIKE '%Adv%'
ORDER BY imdb_score DESC;

--No of Cartoons released by year #
SELECT release_date,COUNT(cartoon_names) AS count_of_cartoons FROM Portfolio3..cartoons$
GROUP BY release_date;

--Cartoons with rating >=8.0 #
SELECT cartoon_names AS Cartoon,imdb_score AS Rating FROM Portfolio3..cartoons$
WHERE imdb_score >=8.0
ORDER BY Rating DESC;
