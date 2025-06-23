-- Recupera as 5 equipes de construtores com mais títulos da história da Fórmula 1
SELECT
  cons.name AS constructor,
  cons.nationality,
  COUNT(*) AS total_trophies
FROM
  `ornate-shine-402117.formula1_dataset.constructors` AS cons
JOIN
  `ornate-shine-402117.formula1_dataset.constructors_final_position` AS fp
  ON cons.constructorId = fp.constructorId
WHERE
  position = 1
GROUP BY
  cons.name,
  cons.nationality
ORDER BY
  total_trophies DESC
LIMIT 5;