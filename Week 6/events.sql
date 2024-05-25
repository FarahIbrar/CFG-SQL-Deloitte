-- Turn ON Event Scheduler 
SET GLOBAL event_scheduler = ON;
USE practice;

-- EXAMPLE 1 --> one time event

CREATE TABLE monitoring_events
(ID INT NOT NULL AUTO_INCREMENT, 
Last_Update TIMESTAMP,
PRIMARY KEY (ID));


-- We are creating an event that will be scheduled for us
-- Change Delimiter
DELIMITER //

CREATE EVENT one_time_event
ON SCHEDULE AT NOW() + INTERVAL 1 MINUTE
DO BEGIN
INSERT INTO monitoring_events(Last_Update)
VALUES (NOW());
END//

-- Change Delimiter
DELIMITER ;

-- Select Data to see that our table is empty
-- Then Select data again in approx 1 min to see what happened. 
SELECT *
FROM monitoring_events;

-- Clean up (optional)
-- DROP TABLE monitoring_events;
-- DROP EVENT one_time_event;

-- EXAMPLE 2 --> reccuring event

CREATE TABLE monitoring_events_version2
(ID INT NOT NULL AUTO_INCREMENT, 
Last_Update TIMESTAMP,
PRIMARY KEY (ID));

-- Change Delimiter
DELIMITER //

CREATE EVENT recurring_time_event
ON SCHEDULE EVERY 2 SECOND
STARTS NOW()
DO BEGIN
INSERT INTO monitoring_events_version2(Last_Update)
VALUES (NOW());
END//

-- Change Delimiter
DELIMITER ;

-- Select Data
SELECT *
FROM monitoring_events_version2
ORDER BY ID DESC;


-- Clean up - this is necessary, otherwise your table will keep on being populated by the event
-- DROP TABLE monitoring_events_version2;
-- DROP EVENT recurring_time_event;

