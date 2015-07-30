SELECT Cst, count(*) AS 'number of planes'
FROM
(SELECT CASE WHEN Cst >= 300 AND Cst <= 399 THEN '300s'
             WHEN Cst >= 400 AND Cst <= 499 THEN '400s'
             WHEN Cst >= 500 AND Cst <= 599 THEN '500s'
             WHEN Cst >= 600 AND Cst <= 699 THEN '600s'
				## This line works, but not necessary b/c of end statemnt
				## WHEN Cst >= 700 AND Cst <= 799 THEN '700s'

             ELSE '700+'	## Else statement must be present
         END as Cst
FROM PLANE_TIERS
WHERE 1
) AS `Just put some random name here`
GROUP BY Cst