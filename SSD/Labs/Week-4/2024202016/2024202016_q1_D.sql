USE SSDLab4;
DELIMITER $$
DROP PROCEDURE getAllUserDetails;
CREATE PROCEDURE getAllUserDetails()
BEGIN
    DECLARE flag INT DEFAULT FALSE;
    DECLARE sub_id INT;
    DECLARE sub_name VARCHAR(100);
    DECLARE sub_date DATE;
    
    DECLARE subsc_cursor CURSOR FOR
        SELECT SubscriberID, SubscriberName, SubscriptionDate
        FROM Subscribers;
        
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag = TRUE;
    OPEN subsc_cursor;
    read_loop: LOOP
        FETCH subsc_cursor INTO sub_id, sub_name, sub_date;
        IF flag THEN
            LEAVE read_loop;
        END IF;
       SELECT sub_id AS 'SubscriberID', sub_name AS 'SubscriberName', sub_date AS 'SubscriptionDate';

    END LOOP;
    CLOSE subsc_cursor;
END$$

DELIMITER ;

CALL getAllUserDetails();

