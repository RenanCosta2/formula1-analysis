WITH
  -- Recupera a quantidade máxima de pontos alcançada pelos pilotos em cada temporada
   drivers_points_per_season AS (
    SELECT
      races.year,
      driver_s.driverId,
      MAX(driver_s.points) AS total_points
    FROM
      `ornate-shine-402117.formula1_dataset.races` AS races
    JOIN
      `ornate-shine-402117.formula1_dataset.driver_standings` AS driver_s
      ON races.raceId = driver_s.raceId
    GROUP BY
      races.year,
      driver_s.driverId
  ),

  -- Recupera qual equipe de construtores que o piloto representou em cada temporada
  driver_constructor_per_year AS (
    SELECT
      fp.year,
      fp.driverId,
      constructors.name AS constructor
    FROM
    -- View que recupera a posição final dos pilotos em cada temporada
      `ornate-shine-402117.formula1_dataset.drivers_final_position` AS fp
    JOIN
      `ornate-shine-402117.formula1_dataset.results` AS results
      ON fp.raceId = results.raceId AND fp.driverId = results.driverId
    JOIN
      `ornate-shine-402117.formula1_dataset.constructors` AS constructors
        ON results.constructorId = constructors.constructorId
)

-- Pódio do campeonato de pilotos para cada temporada
SELECT DISTINCT
  dp.year,
  CONCAT(drivers.forename, ' ', drivers.surname) AS driver,
  drivers.nationality,
  dc.constructor,
  fp.position,
  dp.total_points,
  fp.wins
FROM
  drivers_points_per_season AS dp
JOIN
  -- View que recupera a posição final dos pilotos em cada temporada
  `ornate-shine-402117.formula1_dataset.drivers_final_position` AS fp
  ON dp.year = fp.year AND dp.driverId = fp.driverId
JOIN
  `ornate-shine-402117.formula1_dataset.drivers` AS drivers
  ON dp.driverId = drivers.driverId
JOIN
    driver_constructor_per_year AS dc
    ON dp.year = dc.year AND dp.driverId = dc.driverId
WHERE
  fp.position <= 3
ORDER BY
  dp.year DESC,
  fp.position ASC,
  dp.total_points DESC;
