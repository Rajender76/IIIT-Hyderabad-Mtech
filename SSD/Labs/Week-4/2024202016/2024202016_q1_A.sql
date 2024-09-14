USE SSDLab4;
DELIMITER $$

CREATE PROCEDURE InsertRecord(
    IN id INT, 
    IN tit VARCHAR(100), 
    IN Gen VARCHAR(50), 
    IN filmyear INT
)
BEGIN
   INSERT INTO Shows (ShowID,Title,Genre,ReleaseYear)
    VALUES (id, tit, Gen, filmyear);
END$$
DELIMITER ;

CALL InsertRecord(6, 'GOT', 'Action', 2018);
SELECT * FROM Shows;