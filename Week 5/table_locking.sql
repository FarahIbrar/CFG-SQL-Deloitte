CREATE DATABASE practice; -- Create practice_db, if not already created
USE practice;

-- a sample table  (can be anything)
CREATE TABLE conversation_log (
id INT NOT NULL AUTO_INCREMENT,
message VARCHAR(50) NOT NULL,
author VARCHAR(25) NOT NULL,
PRIMARY KEY (id)
);

-- let's add some values to the table
INSERT INTO conversation_log
(message,author) 
VALUES('I am tweeting', 'student1');

-- check what we have in the table so far
SELECT * FROM conversation_log;
    
-- obtain the READ lock
LOCK TABLE conversation_log READ;


-- try inserting new values again - it would FAIL, becuase we have obtained READ lock in this session
INSERT INTO conversation_log
(message,author) 
VALUES('I want to insert a new log message', 'student2');

-- drop all locks
UNLOCK TABLES;

-- try inserting messages again
INSERT INTO conversation_log
(message,author) 
VALUES('I want to insert a new log message', 'student2');
-- NB: if we would have commented to the DB from a different session and tried to insert a message/values
-- it would NOT Error, but it would be 'suspended', i.e. put in the queue, waiting for the LOCK to be dropped. 


SELECT * FROM conversation_log;

-- (optional if you want to get rid of this DB)
DROP DATABASE practice;