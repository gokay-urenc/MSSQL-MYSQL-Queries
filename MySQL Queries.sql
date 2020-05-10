SELECT * FROM city;

SELECT Code, Name, Continent, Region FROM country
WHERE Continent = 'Asia' AND Region = 'Middle East';

INSERT INTO City (Name, CountryCode, District, Population)
VALUES ('Düzce', 'TUR', 'Düzce', 50000);

SET SQL_SAFE_UPDATES = 0;
UPDATE city SET Population = 60000 
WHERE Name = 'Düzce';

DELETE FROM city WHERE Name = 'Düzce';

SELECT Id, Name, Population FROM City WHERE Name = 'Düzce';