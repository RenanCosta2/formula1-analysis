# Changelog
Este arquivo contém as mudanças nos dados do projeto.

Versão 1.0.0 (27/05/2025)
## New
- Dataset: `circuits`
  - Identifiquei uma inconsistência na coluna `country`, em que existem valores para `USA` e `United States`, embora ambos representem o mesmo país. Com o objetivo de manter a consistência dos dados, alterei o valor de `United States` para `USA`.


- Dataset: `drivers`
  - Alterei o tipo de dados da coluna `dob` (`object` → `datetime64[ns]`). Essa coluna representa a data de nascimento dos pilotos.
  - Para manter o dataset consistente e padronizar um código para cada piloto, os campos nulos da coluna `code` foram preenchidos utilizando códigos artificiais, criados a partir dos três primeiros caracteres do nome do piloto, na coluna `driverRef`. 
  - Identifiquei uma inconsistência na coluna `nationality`, em que existem valores para `Argentine` e `Argentinian`, embora ambas representam a mesma nacionalidade. Com o objetivo de manter a consistência dos dados, alterei o valor de `Argentinian` para `Argentine`.