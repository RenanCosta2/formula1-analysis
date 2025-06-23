-- Recupera os pilotos do pódio de cada circuito
WITH circuit_drivers AS(
  SELECT
    results.raceId,
    ARRAY_AGG(CONCAT(drivers.forename, ' ', drivers.surname) ORDER BY results.positionOrder) AS podium
  FROM
    `ornate-shine-402117.formula1_dataset.results` AS results
  JOIN
    `ornate-shine-402117.formula1_dataset.drivers` AS drivers
    ON results.driverId = drivers.driverId
  WHERE
    positionOrder IN (1, 2, 3)
  GROUP BY
    results.raceId
)

-- Todos os circuitos que ocorreram em cada temporada e seus respectivos pódios
SELECT
  races.year,
  races.name AS race_name,
  circuits.name AS circuit_name,
  circuits.location,
  circuits.country,
  podium[OFFSET(0)] AS first_place,
  podium[OFFSET(1)] AS second_place,
  podium[OFFSET(2)] AS third_place
FROM
  `ornate-shine-402117.formula1_dataset.races` AS races
JOIN
  `ornate-shine-402117.formula1_dataset.circuits` AS circuits
  ON circuits.circuitId = races.circuitId
JOIN
  circuit_drivers AS cd
  ON races.raceId = cd.raceId
ORDER BY
  races.year DESC;