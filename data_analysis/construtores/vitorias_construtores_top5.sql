-- Recupera as 5 equipes de construtores com maior quantidade de vitórias em uma única temporada
SELECT
  year,
  name,
  nationality,
  wins,
  races_quantity,
  wins_percentage
FROM
  `ornate-shine-402117.formula1_dataset.constructor_performance`
ORDER BY
  wins DESC
LIMIT 5;