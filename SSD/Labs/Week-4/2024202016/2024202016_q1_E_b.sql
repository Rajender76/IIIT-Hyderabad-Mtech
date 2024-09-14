DELIMITER $$
CREATE PROCEDURE UpdateAgeWithCursor(IN newAge INT)
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE subID INT;
    DECLARE cur CURSOR FOR SELECT SubscriberID FROM Subscribers;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO subID;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE Subscribers
        SET Age = newAge
        WHERE SubscriberID = subID;
    END LOOP;

    CLOSE cur;
END $$
DELIMITER ;

call UpdateAgeWithCursor(20);
select * from Subscribers;