SELECT ACTOR FROM
(SELECT DATEPART(yyyy,VIEW_DATETIME) AS YEAR
FROM TAPS_MOVIES
JOIN
(SELECT ACTOR, TITLE
FROM CASTS
JOIN
TAPS_MOVIES
ON (CASTS.TITLE=TAPS_MOVIES.TITLE)
)
WHERE (YEAR=MOVIES.TITLE_YEAR)
);


--We need first to group actors by the number of taps each month and select the one who has the greatest number --> ROWNUM <=1
--To do it, we need to use the date which is an attribute of the TAPS_MOVIES, but only year and month are relevant to order them
--We need a table which join the attributes actor and title from cast with taps movies, whose relevant attributes are title, to compare with
--the one obtained from cast, and the date, to later group by actor's name
--Trouble: select the correct fuctions of sql server environment
