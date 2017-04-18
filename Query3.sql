
--Count is added
SELECT COUNT (*)  FROM
(SELECT CLIENT, TLIC.TITLE, TLIC.SEASON FROM SEASONS
JOIN (SELECT CLIENT, TITLE, SEASON, COUNT (DATETIME) COUNTER
      FROM LIC_SERIES
      GROUP BY CLIENT, TITLE, SEASON) TLIC
ON (TLIC.COUNTER=SEASONS.EPISODES AND TLIC.TITLE=SEASONS.TITLE AND TLIC.SEASON=SEASONS.SEASON));




