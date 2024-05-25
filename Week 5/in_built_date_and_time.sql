-- ADDDATE() or DATE_ADD() - Add time values (intervals) to a date value
SELECT ADDDATE('2020-01-01', INTERVAL 15 DAY), DATE_ADD('2020-01-01', INTERVAL 15 DAY);

-- SUBDATE() or DATE_SUB() - Subtract a time value (interval) from a date
SELECT SUBDATE('2020-01-01', INTERVAL 15 DAY), DATE_SUB('2020-01-01', INTERVAL 15 DAY);

-- Return the current date
SELECT CURDATE(), CURRENT_DATE(), CURRENT_DATE; -- good for queries when we are recording orders, bookings etc. 

-- Return the current time
SELECT CURRENT_TIME(), CURRENT_TIME, CURTIME(); -- good for timestamps

-- Returns the current date and time
SELECT NOW(), CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP;

-- Various date and time part of datetime
SELECT 	NOW(),
DATE(NOW()),
TIME(NOW()),
YEAR(NOW()),
QUARTER(NOW()),
MONTH(NOW()),
WEEK(NOW()),
DAY(NOW()),
DAYNAME(NOW()),
HOUR(NOW()),
MINUTE(NOW()),
SECOND(NOW());

-- Format Date and Time
SELECT 	DATE_FORMAT('2020-10-05 11:22:00', '%W %M %Y'),
DATE_FORMAT('2020-10-05 11:22:00', '%d %b %Y %T:%f'),
DATE_FORMAT('2020-10-05 11:22:00', '%b %d %Y %h:%i %p');
        
/*
MySQL has many different abbreviations for various formats.alter
You can find various online resources to get a full list. Below are some examples
----------
%a	Abbreviated weekday name
%b	Abbreviated month name
%c	Month, numeric
%D	Day of month with English suffix
%d	Day of month, numeric (00-31)
%e	Day of month, numeric (0-31)
%f	Microseconds
%H	Hour (00-23)
%h	Hour (01-12)
%I	Hour (01-12)
%i	Minutes, numeric (00-59)
%j	Day of year (001-366)
%k	Hour (0-23)
%l	Hour (1-12)
%M	Month name
%m	Month, numeric (00-12)
%p	AM or PM
%r	Time, 12-hour (hh:mm:ss AM or PM)
%S	Seconds (00-59)
%s	Seconds (00-59)
%T	Time, 24-hour (hh:mm:ss)
%U	Week (00-53) where Sunday is the first day of week
%u	Week (00-53) where Monday is the first day of week
%V	Week (01-53) where Sunday is the first day of week, used with %X
%v	Week (01-53) where Monday is the first day of week, used with %x
%W	Weekday name
%w	Day of the week (0=Sunday, 6=Saturday)
%X	Year of the week where Sunday is the first day of week, four digits, used with %V
%x	Year of the week where Monday is the first day of week, four digits, used with %v
%Y	Year, four digits
%y	Year, two digits
*/




