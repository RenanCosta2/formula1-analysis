-- Recupera a distribuição das equipes de construtores por nacionalidade
SELECT
  nationality AS constructors_nationality,
  COUNT(nationality) AS quantity
FROM
  `ornate-shine-402117.formula1_dataset.constructors`
GROUP BY
  nationality
ORDER BY
  quantity DESC;