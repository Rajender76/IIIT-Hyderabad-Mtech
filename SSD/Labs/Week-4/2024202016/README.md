### SSD LAB-4

## Question-1

Created a Procedure named InsertRecord and running this Procedure

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

> I didn't deleted the procedure if exists. Please rename the procedure to run or run the call line only to exceute 

## Question-2

I Retrieved all the entries using SELECT queries.

## Question -3

I grouped the SubsciberID's by `groupby` and `sum(total_watch_time)` and  printed

Execute call TotalTime() directly don't create it again.

## Question - 4

Created the cursors I am retieving each entry of the table and printing it. I tried to string append but not working in Mysql(DBMS.output...)

So the expected output is each entry is displayed on each output tab.

## Question -5

### Part -1

Created a procedure and added the new column named `newAge`

call AddAge();
select * from Subscribers;

