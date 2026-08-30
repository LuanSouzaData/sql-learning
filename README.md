# 🐘 SQL Learning Path

> Um repositório estruturado para aprendizado contínuo de SQL com **PostgreSQL**, cobrindo desde os conceitos fundamentais até técnicas avançadas de otimização de consultas.

![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Em_Desenvolvimento-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

---

## 📌 Objetivos do Repositório

- [x] Dominar os fundamentos de bancos de dados relacionais e SQL.
- [ ] Praticar criação, alteração e manipulação de esquemas e dados.
- [ ] Desenvolver consultas complexas para análise e extração de dados.
- [ ] Trabalhar com importação/exportação de dados reais (arquivos CSV).
- [ ] Aplicar recursos avançados do PostgreSQL (CTEs, Window Functions, etc.).
- [ ] Aplicar boas práticas de controle de versão utilizando Git e GitHub.

---

## 🗺️ Trilha de Aprendizado

O conteúdo do repositório está organizado progressivamente nos seguintes módulos:

### 🟢 Módulo 1: Fundamentos & Manipulação Básica
- **Conceitos de SGBDR**: Tabelas, linhas, colunas e relacionamentos.
- **DDL (Data Definition Language)**: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`.
- **DML (Data Manipulation Language)**: `INSERT`, `UPDATE`, `DELETE`.
- **DQL (Data Query Language)**: `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`.
- **Constraints**: `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`, `CHECK`.

### 🟡 Módulo 2: Agregação & Relacionamentos
- **Funções de Agregação**: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`.
- **Agrupamentos**: `GROUP BY` e `HAVING`.
- **JOINs**: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`, `CROSS JOIN`, `SELF JOIN`.
- **Importação de Dados**: Carga de dados via arquivos CSV.

### 🔴 Módulo 3: SQL Intermediário & Avançado
- **Subqueries**: Consultas aninhadas e operadores `IN`, `EXISTS`, `ANY`, `ALL`.
- **CTEs (Common Table Expressions)**: Cláusula `WITH` e consultas recursivas.
- **Window Functions**: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`, funções de agregação com `OVER()`.
- **Views & Materialized Views**: Simplificação de consultas e cache de dados.

### 🔵 Módulo 4: Performance & Administração
- **Índices**: `B-Tree`, `Hash`, estratégias de indexação e análise de execução.
- **Transactions & Concorrência**: `BEGIN`, `COMMIT`, `ROLLBACK` e níveis de isolamento.
- **Otimização de Queries**: Análise de planos com `EXPLAIN` e `EXPLAIN ANALYZE`.

---

## 🛠️ Tecnologias e Ferramentas

- **SGBD**: PostgreSQL
- **GUI (Opcional)**: DBeaver / pgAdmin / VS Code (PostgreSQL Extension)
- **Linguagem**: SQL

---

## 🚀 Como Utilizar Este Repositório

1. **Clone o repositório:**
   ```bash
   git clone [https://github.com/seu-usuario/sql-learning.git](https://github.com/seu-usuario/sql-learning.git)
   cd sql-learning