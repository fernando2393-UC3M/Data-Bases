SELECT ACTOR, A.MON, MAXIMUM FROM(
(SELECT MON, MAX(COUNTER) AS MAXIMUM FROM
(SELECT ACTOR, TO_CHAR(VIEW_DATETIME, 'MON-YYYY') AS MON, COUNT (TITLE) COUNTER FROM
(SELECT TITLE, VIEW_DATETIME, ACTOR
FROM
TAPS_MOVIES NATURAL JOIN
CASTS)
GROUP BY ACTOR, TO_CHAR(VIEW_DATETIME, 'MON-YYYY')
ORDER BY COUNTER DESC)
GROUP BY MON
ORDER BY MON DESC) A
JOIN
(SELECT ACTOR, TO_CHAR(VIEW_DATETIME, 'MON-YYYY') AS MON, COUNT (TITLE) COUNTER FROM
(SELECT TITLE, VIEW_DATETIME, ACTOR
FROM
TAPS_MOVIES NATURAL JOIN
CASTS)
GROUP BY ACTOR, TO_CHAR(VIEW_DATETIME, 'MON-YYYY')
ORDER BY COUNTER DESC) B
ON (MAXIMUM=COUNTER AND A.MON=B.MON)
) ORDER BY TO_DATE(A.MON, 'MON-YYYY')
;
<<<<<<< HEAD

=======
>>>>>>> origin/master
--We need first to group actors by the number of taps each month and select the one who has the greatest number
--To do it, we need to use the date which is an attribute of the TAPS_MOVIES, but only year and month are relevant to order them
--We need a table which join the attributes actor and title from cast with taps movies, whose relevant attributes are title, to compare with
--the one obtained from cast, and the date, to later group by actor's name
