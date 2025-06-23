-- Recupera os 10 pilotos com mais vitórias da história da Fórmula 1
SELECT
  CONCAT(drivers.forename, ' ', drivers.surname) AS driver,
  drivers.nationality,
  COUNT(results.position) AS wins
FROM
  `ornate-shine-402117.formula1_dataset.drivers` AS drivers
JOIN
  `ornate-shine-402117.formula1_dataset.results` AS results
ON
  drivers.driverId = results.driverId
WHERE
  results.position = 1
GROUP BY
  driver,
  drivers.nationality
ORDER BY
  wins DESC
LIMIT 10;