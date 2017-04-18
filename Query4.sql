SELECT ACTOR FROM
(SELECT ACTOR, COUNT('x') VIEW_DATETIME FROM
(SELECT TITLE, VIEW_DATETIME, ACTOR
FROM TAPS_MOVIES NATURAL JOIN
CASTS
)
GROUP BY ACTOR
ORDER BY VIEW_DATETIME DESC)
WHERE ROWNUM <=1;


SELECT TO_CHAR(VIEW_DATETIME, 'YYYY-MM') FROM

--We need first to group actors by the number of taps each month and select the one who has the greatest number --> ROWNUM <=1
--To do it, we need to use the date which is an attribute of the TAPS_MOVIES, but only year and month are relevant to order them
--We need a table which join the attributes actor and title from cast with taps movies, whose relevant attributes are title, to compare with
--the one obtained from cast, and the date, to later group by actor's name
--Trouble: select the correct fuctions of sql server environment
