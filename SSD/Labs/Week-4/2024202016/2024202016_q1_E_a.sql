USE SSDLab4;
DELIMITER $$
CREATE PROCEDURE AddAge()
BEGIN
ALTER TABLE Subscribers ADD COLUMN newAge INT; 
END $$
DELIMITER ;

call AddAge();
select * from Subscribers;

