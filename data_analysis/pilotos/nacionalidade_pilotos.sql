-- Recupera a distribuição dos pilotos por nacionalidade
SELECT
  nationality AS drivers_nationality,
  COUNT(nationality) AS quantity
FROM
  `ornate-shine-402117.formula1_dataset.drivers`
GROUP BY
  nationality
ORDER BY
  quantity DESC;