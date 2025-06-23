-- Recupera a posição final dos construtores em cada temporada
CREATE OR REPLACE VIEW `ornate-shine-402117.formula1_dataset.constructors_final_position` AS
(
  SELECT
    races.year,
    cons_s.constructorId,
    cons_s.position,
    cons_s.wins,
    races.raceId
  FROM
    `ornate-shine-402117.formula1_dataset.races` AS races
  JOIN
    `ornate-shine-402117.formula1_dataset.constructor_standings` AS cons_s
    ON races.raceId = cons_s.raceId
  JOIN
    `ornate-shine-402117.formula1_dataset.last_race_per_season` AS lr
    -- Recupera as informações apenas do registro da última corrida de cada temporada, que representam o ranking final
    ON races.year = lr.year AND races.round = lr.last_round
);