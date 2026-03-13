# Curso SQL Repository

Este repositório foi criado para acompanhar um curso de SQL e é composto por diversos arquivos de exemplo que demonstram conceitos e práticas em SQL. O foco principal é ensinar seleção de dados, filtros, agregações e operações comuns em bancos de dados relacionais.

## Estrutura do repositório

Cada arquivo `.sql` possui um nome que indica a lição ou conceito abordado:

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

## Exercícios

A pasta `exercicios/` contém exercícios práticos para reforçar o aprendizado dos conceitos apresentados:

### Exercícios de WHERE
- `01_where.sql` até `09_where.sql` - Exercícios sobre filtros e condições

### Exercícios de GROUP BY
- `01_groupby.sql` até `08_group_by.sql` - Exercícios sobre agrupamento de dados

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