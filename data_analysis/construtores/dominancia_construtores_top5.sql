-- Recupera as 5 equipes de construtores com maior dominância (porcentagem de vitória) em uma única temporada
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
  wins_percentage DESC
LIMIT 5;