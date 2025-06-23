-- Recupera os 11 pilotos com mais títulos da história da Fórmula 1
-- Nesse caso o 11º piloto foi incluído porque os últimos 4 pilotos possuem a mesma quantidade de títulos (3)
SELECT
  CONCAT(drivers.forename, ' ', drivers.surname) AS driver,
  drivers.nationality,
  drivers.dob AS date_of_birth,
  COUNT(*) AS total_trophies
FROM
  `ornate-shine-402117.formula1_dataset.drivers` AS drivers
JOIN
  `ornate-shine-402117.formula1_dataset.drivers_final_position` AS fp
  ON drivers.driverId = fp.driverId
WHERE
  position = 1
GROUP BY
  drivers.forename,
  drivers.surname,
  drivers.nationality,
  date_of_birth
ORDER BY
  total_trophies DESC
LIMIT 11;