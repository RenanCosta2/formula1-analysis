# Análises SQL no Big Query

Este arquivo contém as consultas SQL utilizadas para a análise do projeto de Fórmula 1, executadas diretamente no Google BigQuery.

## Consultas Disponíveis

As consultas abaixo foram estruturadas para responder às principais perguntas analíticas do projeto, organizadas nas seguintes categorias temáticas:

- [Temporadas](temporadas)
- [Pilotos](pilotos)
- [Construtores](construtores)
- [Circuitos](circuitos)

Além dessas categorias, há também uma pasta dedicada a [views temporárias](views), que foram utilizadas como base para simplificar consultas mais complexas nas categorias mencionadas anteriormente.

Cada categoria está representada por uma pasta específica, contendo os arquivos `.sql` devidamente comentados.

### Views Temporárias

- [`desempenho_construtores_por_temporada.sql` ](views/desempenho_construtores_por_temporada.sql)    
  Consulta que retorna o desempenho das equipes de construtores em cada temporada.


- [`posicao_construtores_por_temporada.sql`](views/posicao_construtores_por_temporada.sql)  
  Consulta que retorna a posição final dos construtores em cada temporada.


- [`posicao_pilotos_por_temporada.sql`](views/posicao_pilotos_por_temporada.sql)     
  Consulta que retorna a posição final dos pilotos em cada temporada.


- [`ultima_corrida_por_temporada.sql`](views/ultima_corrida_por_temporada.sql)  
  Consulta que retorna o número da última corrida em cada temporada.

### Temporadas

- [`circuitos_por_temporada.sql`](temporadas/circuitos_por_temporada.sql)     
  Consulta que retorna os circuitos que ocorreram em cada temporada e seus respectivos pódios.


- [`podio_por_temporada.sql`](temporadas/podio_por_temporada.sql)  
  Consulta que retorna o pódio do campeonato de pilotos para cada temporada.

### Pilotos

- [`vitorias_pilotos_top10.sql` ](pilotos/vitorias_pilotos_top10.sql)    
  Consulta que retorna os 10 pilotos com mais vitórias da história da Fórmula 1.


- [`titulos_pilotos_top11.sql`](pilotos/titulos_pilotos_top11.sql)  
  Consulta que retorna os 11 pilotos com mais títulos da história da Fórmula 1. Nesse caso o 11º piloto foi incluído porque os últimos 4 pilotos possuem a mesma quantidade de títulos (3).


- [`participacao_pilotos_top11.sql`](pilotos/participacao_pilotos_top11.sql)     
  Consulta que retorna os 11 pilotos com mais corridas participadas. Nesse caso o 11º piloto foi incluído porque ele possui a mesma quantidade de corridas participadas que o 10º piloto (257).


- [`nacionalidade_pilotos.sql`](pilotos/nacionalidade_pilotos.sql)  
  Consulta que retorna a distribuição dos pilotos por nacionalidade.

### Construtores

- [`vitorias_construtores_top5.sql`](construtores/vitorias_construtores_top5.sql)     
  Consulta que retorna as 5 equipes de construtores com maior quantidade de vitórias em uma única temporada.


- [`titulos_construtores_top5.sql`](construtores/titulos_construtores_top5.sql)  
  Consulta que retorna as 5 equipes de construtores com mais títulos da história da Fórmula 1.


- [`dominancia_construtores_top5.sql`](construtores/dominancia_construtores_top5.sql)     
  Consulta que retorna as 5 equipes de construtores com maior dominância (porcentagem de vitória) em uma única temporada.


- [`nacionalidade_construtores.sql`](construtores/nacionalidade_construtores.sql)  
  Consulta que retorna a distribuição das equipes de construtores por nacionalidade.
