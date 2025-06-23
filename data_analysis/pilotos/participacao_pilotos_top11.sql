-- Recupera os 11 pilotos com mais corridas participadas
-- Nesse caso o 11º piloto foi incluído porque ele possui a mesma quantidade de corridas participadas que o 10º piloto (257)
SELECT
  drivers.driverId,
  CONCAT(drivers.forename, ' ', drivers.surname) AS driver,
  drivers.nationality,
  COUNT(DISTINCT results.raceId) AS races_participated
FROM
  `ornate-shine-402117.formula1_dataset.drivers` AS drivers
JOIN
  `ornate-shine-402117.formula1_dataset.results` AS results
  ON drivers.driverId = results.driverId
GROUP BY
  drivers.driverId,
  drivers.forename,
  drivers.surname,
  drivers.nationality
ORDER BY
  races_participated DESC
LIMIT 11;