SELECT DATEPART(yyyy,VIEW_DATETIME) AS YEAR
FROM TAPS_MOVIES
JOIN
(SELECT ACTOR, TITLE
FROM CASTS
JOIN
TAPS_MOVIES
ON (CASTS.TITLE=TAPS_MOVIES.TITLE)
);
