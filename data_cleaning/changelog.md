# Changelog
Este arquivo contém as mudanças nos dados do projeto.

Versão 1.0.0 (27/05/2025)
## New
- Dataset: `circuits`
  - Identifiquei uma inconsistência na coluna `country`, em que existem valores para `USA` e `United States`, embora ambos representem o mesmo país. Com o objetivo de manter a consistência dos dados, alterei o valor de `United States` para `USA`.


- Dataset: `drivers`
  - Alterei o tipo de dados da coluna `dob` (`object` → `datetime64[ns]`). Essa coluna representa a data de nascimento dos pilotos.
  - Alterei o tipo de dados da coluna `number` (`float64` → `Int64`). O tipo `Int64`, com o `I` maiúsculo, aceita valores ausentes e inteiros juntos.
  - Para manter o dataset consistente e padronizar um código para cada piloto, os campos nulos da coluna `code` foram preenchidos utilizando códigos artificiais, criados a partir dos três primeiros caracteres do nome do piloto, na coluna `driverRef`. 
  - Identifiquei uma inconsistência na coluna `nationality`, em que existem valores para `Argentine` e `Argentinian`, embora ambas representam a mesma nacionalidade. Com o objetivo de manter a consistência dos dados, alterei o valor de `Argentinian` para `Argentine`.


- Dataset: `races`
  - Para manter a consistência dos dados, alterei o tipo de dados das colunas `date`, `fp1_date`, `fp2_date`, `fp3_date`, `quali_date` e `sprint_date` (`object` → `datetime64[ns]`).


- Dataset: `results`
  - Para manter a consistência dos dados, alterei o tipo de dados das colunas `number`, `position`, `milliseconds`, `fastestLap` e `rank` (`float64` → `Int64`).
  - Criação da coluna `fastestLapTime_ms`, com os tempos das voltas convertidas para milisegundos. Essa coluna foi criada para possibilitar operações matemáticas com esses valores.


- Dataset: `qualifying`
  - Criação de colunas `q1_ms`, `q2_ms` e `q3_ms`, com os tempos dos qualificatórios convertidos para milisegundos. Essas colunas foram criadas para possibilitar operações matemáticas com esses valores.


- Dataset: `sprint_results`
  - Criação da coluna `fastestLapTime_ms`, com os tempos das voltas convertidas para milisegundos. Essa coluna foi criada para possibilitar operações matemáticas com esses valores.