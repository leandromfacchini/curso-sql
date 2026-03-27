# Curso de SQL

Repositório com exemplos, exercícios e arquivos de apoio para estudo de SQL usando uma base simples de clientes, produtos e transações.

O material está organizado em uma sequência progressiva: começando com `SELECT` e `WHERE`, avançando para agregações, `GROUP BY`, `JOIN`, subqueries e `CTE`.

## Conteúdo

- `src/`: scripts principais das aulas
- `exercicios/`: exercícios para fixação
- `praticar/`: listas extras de prática
- `database.db`: banco SQLite já pronto para uso
- `*.csv`: arquivos de dados usados no projeto

## Sequência das aulas

Os arquivos em `src/` seguem a trilha principal do curso:

- `01_select.sql`: `SELECT` básico
- `02_tables.sql`: visualização de tabelas no SQLite
- `03_select_from.sql`: consultas com `FROM` e `LIMIT`
- `04_where.sql`: filtros com `WHERE`
- `05_select_col.sql`: seleção de colunas e transformações simples
- `06_order_by.sql`: ordenação com `ORDER BY`
- `07_case_when.sql`: classificações com `CASE WHEN`
- `08_count.sql`: introdução a `COUNT`
- `09_count_distinct.sql`: uso de `COUNT(DISTINCT ...)`
- `10_sum.sql`: somatórios e agregações condicionais
- `11_stats.sql`: `AVG`, `MIN`, `MAX` e métricas agregadas
- `12_groupby.sql`: agrupamento básico com `GROUP BY`
- `12_groupby_2.sql`: `GROUP BY` com `HAVING`, ordenação e `LIMIT`
- `13_join.sql`: relacionamentos com `JOIN`
- `14_subquery.sql`: subquery com `IN`
- `15_subquery.sql`: subquery para cruzar clientes entre datas
- `16_subquery.sql`: subquery derivada no `FROM`
- `17_cte.sql`: introdução a `CTE` com `WITH` e composição de consultas

## Base de dados

O projeto já inclui um banco SQLite em [`database.db`](/home/leandro/repos/github/curso-sql/database.db), com estas tabelas:

- `clientes`
- `produtos`
- `transacoes`
- `transacao_produto`

Os arquivos CSV também estão disponíveis para referência ou reimportação:

- `clientes.csv`
- `produtos.csv`
- `transacoes.csv`
- `transacao_produto.csv`

Observação: os CSVs usam `;` como separador.

## Como executar

A forma mais simples é usar o banco SQLite já incluído no repositório:

```bash
sqlite3 database.db
```

Dentro do SQLite, você pode executar consultas manualmente ou carregar um script:

```sql
.read src/01_select.sql
.read src/13_join.sql
.read src/17_cte.sql
```

Para listar as tabelas:

```sql
.tables
```

## Reimportando os dados no SQLite

Se quiser recriar as tabelas a partir dos CSVs, use o modo CSV com separador `;`:

```sql
.mode csv
.separator ;
```

Depois, crie as tabelas e importe os arquivos conforme o schema do projeto.

## Exercícios e prática

O repositório também inclui material para treino:

- `22` arquivos em `exercicios/`
- `7` arquivos em `praticar/`

Temas disponíveis:

- `WHERE`
- `GROUP BY`
- `JOIN`
- `CTE`

## Requisitos

- `sqlite3` para executar o banco localmente

Se preferir, você também pode adaptar os scripts para outro SGBD, mas alguns comandos e funções foram escritos pensando em SQLite.

## Objetivo

Servir como apoio prático para quem está aprendendo SQL com exemplos curtos, dados reais de teste e exercícios para praticar consulta, filtro, agregação, relacionamento entre tabelas e composição de consultas com subqueries e `CTE`.
