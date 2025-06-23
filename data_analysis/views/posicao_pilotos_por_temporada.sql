-- Recupera a posição final dos pilotos em cada temporada
CREATE OR REPLACE VIEW `ornate-shine-402117.formula1_dataset.drivers_final_position` AS
(
  SELECT
    races.year,
    driver_s.driverId,
    driver_s.position,
    driver_s.wins,
    races.raceId
  FROM
    `ornate-shine-402117.formula1_dataset.races` AS races
  JOIN
    `ornate-shine-402117.formula1_dataset.driver_standings` AS driver_s
    ON races.raceId = driver_s.raceId
  JOIN
    `ornate-shine-402117.formula1_dataset.last_race_per_season` AS lr
    -- Recupera as informações apenas do registro da última corrida de cada temporada, que representam o ranking final
    ON races.year = lr.year AND races.round = lr.last_round
);