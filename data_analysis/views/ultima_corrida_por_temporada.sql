-- Recupera o número da última corrida em cada temporada
CREATE OR REPLACE VIEW `ornate-shine-402117.formula1_dataset.last_race_per_season` AS
(
  SELECT
    year,
    MAX(round) AS last_round
  FROM
    `ornate-shine-402117.formula1_dataset.races`
  GROUP BY
    year
);