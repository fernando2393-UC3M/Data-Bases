SELECT ACTOR, count('x') performances FROM
 (SELECT ACTOR, TITLE
  FROM CASTS JOIN
  MOVIES
  ON (MOVIES.COUNTRY='USA')
  )
  GROUP BY ACTOR
  ORDER BY performances;
