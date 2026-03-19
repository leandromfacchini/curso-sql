# Curso SQL Repository

Este repositório foi criado para acompanhar um curso de SQL e é composto por diversos arquivos de exemplo que demonstram conceitos e práticas em SQL. O foco principal é ensinar seleção de dados, filtros, agregações e operações comuns em bancos de dados relacionais.

## Sumário

- [Estrutura do repositório](#estrutura-do-repositório)
- [Pré-requisitos](#pré-requisitos)
- [Como executar](#como-executar)
- [Exercícios](#exercícios)
- [Prática Adicional](#prática-adicional)

## Estrutura do repositório

Cada arquivo `.sql` possui um nome que indica a lição ou conceito abordado:

### Pasta `src/`
- `01_select.sql` - Instruções SELECT básicas
- `02_tables.sql` - Criação e visualização de tabelas
- `03_select_from.sql` - SELECT com FROM
- `04_where.sql` - Filtragem com WHERE
- `05_select_col.sql` - Seleção de colunas específicas
- `06_order_by.sql` - Ordenação de resultados
- `07_case_when.sql` - Uso de CASE WHEN
- `08_count.sql` - Função COUNT
- `09_count_distinct.sql` - COUNT DISTINCT
- `10_sum.sql` - Funções SUM
- `11_stats.sql` - Estatísticas e funções agregadas
- `12_groupby.sql` - Agrupamento com GROUP BY
- `12_groupby_2.sql` - Continuação do grupo de exemplos
- `13_join.sql` - Joins entre tabelas

Também existem arquivos CSV que servem como dados de entrada para experimentações:

- `clientes.csv` - Dados de clientes
- `produtos.csv` - Dados de produtos
- `transacao_produto.csv` - Relação entre transações e produtos
- `transacoes.csv` - Registros de transações

## Pré-requisitos

- Um sistema de gerenciamento de banco de dados SQL (como MySQL, PostgreSQL, SQLite ou SQL Server).
- Ferramenta para executar consultas SQL (como MySQL Workbench, pgAdmin, DBeaver ou linha de comando).

## Como executar

1. **Importe os dados**: Use os arquivos CSV para criar tabelas no seu banco de dados. Por exemplo, no MySQL:
   ```sql
   CREATE TABLE clientes (
       id INT PRIMARY KEY,
       nome VARCHAR(255),
       -- outros campos conforme necessário
   );
   LOAD DATA INFILE 'clientes.csv' INTO TABLE clientes
   FIELDS TERMINATED BY ','
   LINES TERMINATED BY '\n'
   IGNORE 1 ROWS;
   ```
   Repita para os outros arquivos CSV (`produtos.csv`, `transacao_produto.csv`, `transacoes.csv`).

2. **Execute os arquivos SQL**: Abra cada arquivo `.sql` em sua ferramenta SQL e execute as consultas para ver os resultados.

3. **Pratique com exercícios**: Navegue pelas pastas `exercicios/` e `praticar/` para resolver os exercícios propostos.

## Exercícios

A pasta `exercicios/` contém exercícios práticos para reforçar o aprendizado dos conceitos apresentados:

### Exercícios de WHERE
- `01_where.sql` até `09_where.sql` - Exercícios sobre filtros e condições

### Exercícios de GROUP BY
- `01_groupby.sql` até `08_group_by.sql` - Exercícios sobre agrupamento de dados

### Exercícios de JOIN
- `01_join.sql` até `03_join.sql` - Exercícios sobre joins entre tabelas

## Prática Adicional

A pasta `praticar/` contém exercícios adicionais para prática:

### Exercícios de WHERE
- `01_where.sql` até `04_where.sql` - Exercícios sobre filtros e condições

### Exercícios de JOIN
- `01_join.sql` até `03_join.sql` - Exercícios sobre joins entre tabelas

## Objetivo

Fornecer exemplos práticos e arquivos de dados para aprendizado e prática de consultas SQL em um ambiente controlado. Ideal para iniciantes que desejam entender como operar em um banco de dados relacional.

## Uso

1. Clone o repositório
2. Importe os arquivos CSV em seu SGBD preferido (por exemplo, MySQL, PostgreSQL, SQLite)
3. Execute os scripts `.sql` para ver exemplos práticos e teste suas próprias consultas
4. Resolva os exercícios na pasta `exercicios/` para praticar os conceitos aprendidos