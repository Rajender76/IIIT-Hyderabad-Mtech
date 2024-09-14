USE SSDLab4;
DELIMITER $$
DROP PROCEDURE TotalTime;
CREATE PROCEDURE TotalTime()
BEGIN
SELECT SubscriberID , SUM(WatchTime) from WatchHistory
GROUP BY SubscriberID;
END $$
DELIMITER ;

call TotalTime();


