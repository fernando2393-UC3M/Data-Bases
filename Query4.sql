SELECT EXTRACT(YEAR_MONTH FROM VIEW_DATETIME) AS YEARANDMONTH
FROM TAPS_MOVIES
JOIN
(SELECT ACTOR, TITLE
FROM CASTS
JOIN
TAPS_MOVIES
ON (CASTS.TITLE=TAPS_MOVIES.TITLE)
);
