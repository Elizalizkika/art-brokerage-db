-- Q1
SELECT artwork.a_name, artwork.price 
FROM artwork 
WHERE medium = 'oil' AND price BETWEEN 500 AND 30000;

--Q2
SELECT * 
FROM artist 
WHERE (medium = 'pencil' OR style = 'abstract' OR mood = 'delight')
  AND availability = 'yes';

--Q3
SELECT artwork.a_name, artwork.price 
FROM artwork 
WHERE price = (
  SELECT MIN(price) 
  FROM artwork 
  WHERE medium = 'oil'
);

--Q4
SELECT artist.name AS Artist_Name, 
       CAST(AVG(artwork.price) AS DECIMAL(10, 2)) AS Price
FROM artist
JOIN artwork ON artist.artist_id = artwork.artist_id
GROUP BY artist.name;

--Q5
SELECT name 
FROM artist 
WHERE mood = 'dark' AND availability = 'YES';

--Q6
UPDATE artwork 
SET price = price + (price * 0.2) 
WHERE artist_id = 33333;
