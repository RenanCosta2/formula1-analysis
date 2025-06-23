-- Recupera o desempenho das equipes de construtores em cada temporada
CREATE OR REPLACE VIEW `ornate-shine-402117.formula1_dataset.constructor_performance` AS
(
  SELECT
    races.year,
    cons.name,
    cons.nationality,
    COUNT(results.position) AS wins,
    races_quant_by_year.races_quantity,
    ROUND(((COUNT(results.position) / races_quantity) * 100), 2) AS wins_percentage
  FROM
    `ornate-shine-402117.formula1_dataset.results` AS results
  JOIN
    `ornate-shine-402117.formula1_dataset.constructors` AS cons
    ON cons.constructorId = results.constructorId
  JOIN
    `ornate-shine-402117.formula1_dataset.races` AS races
    ON races.raceId = results.raceId
  JOIN
    (
      SELECT
        year,
        COUNT(raceId) AS races_quantity
      FROM
        `ornate-shine-402117.formula1_dataset.races` AS races
      GROUP BY
        year
    ) AS races_quant_by_year
    ON races_quant_by_year.year = races.year
  WHERE
    results.position = 1
  GROUP BY
    races.year,
    cons.name,
    cons.nationality,
    races_quant_by_year.races_quantity
)