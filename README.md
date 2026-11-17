# Netflix Dataset Analysis Using SQL

## Project Overview

This project explores the Netflix titles dataset using SQL in **PostgreSQL**. It focuses on answering practical business questions about Netflix movies and TV shows, including content distribution, ratings, countries, genres, release years, actors, directors, and content descriptions.

The project demonstrates SQL skills commonly used in data analysis, such as filtering, aggregation, grouping, sorting, subqueries, window functions, string functions, date functions, and conditional logic.

## Dataset

The project uses the `netflix_titles.csv` dataset.

- **Rows:** 8,807
- **Columns:** 12
- **Content types:** Movies and TV Shows

### Table Structure

The SQL script creates a table named `netflix_table` with these columns:

| Column | Description |
|---|---|
| `show_id` | Unique ID for each title |
| `type` | Movie or TV Show |
| `title` | Title of the content |
| `director` | Director or directors |
| `casts` | Cast members |
| `country` | Country or countries associated with the content |
| `date_added` | Date the content was added to Netflix |
| `release_year` | Original release year |
| `rating` | Content rating |
| `duration` | Movie runtime or number of TV show seasons |
| `listed_in` | Genre or category |
| `description` | Short description of the content |

## Tools and Technologies

- **Database:** PostgreSQL
- **SQL environment:** pgAdmin / PostgreSQL-compatible SQL editor
- **Dataset format:** CSV

## Business Questions and SQL Analysis

The SQL script addresses the following questions:

1. Count the number of Movies vs. TV Shows.
2. Find the most common rating for Movies and TV Shows.
3. List all movies released in a specific year (2020).
4. Find the top 5 countries with the most content on Netflix.
5. Identify the longest movie.
6. Find content added in the last 5 years.
7. Find all movies and TV shows by the director `Rajiv Chilaka`.
8. List all TV shows with more than 5 seasons.
9. Count the number of content items in each genre.
10. Find the average movie duration for each release year.
11. List all movies that are documentaries.
12. Find all content without a director.
13. Find how many movies actor `Salman Khan` appeared in during the last 10 years.
14. Categorize content as `Bad` or `Good` based on whether the description contains the keywords `kill` or `violence`, and count the items in each category.
15. Find the month with the highest number of content additions to Netflix.

## SQL Concepts Practiced

- `SELECT`, `WHERE`, and `DISTINCT`
- `GROUP BY` and `ORDER BY`
- Aggregate functions: `COUNT()`, `MAX()`, and `AVG()`
- Subqueries
- Window functions: `RANK() OVER()`
- Conditional logic: `CASE WHEN`
- Pattern matching: `LIKE` and `ILIKE`
- String functions: `STRING_TO_ARRAY()`, `UNNEST()`, `SPLIT_PART()`, `TRIM()`
- Date functions: `TO_DATE()`, `TO_CHAR()`, `EXTRACT()`
- Type casting and numeric conversion
- `LIMIT`

## How to Run the Project

1. Download or clone this repository.
2. Download the Netflix dataset CSV file.
3. Open PostgreSQL using pgAdmin or another PostgreSQL-compatible SQL editor.
4. Create a database for the project.
5. Run the `CREATE TABLE` statement from the SQL script, then import the CSV data into `netflix_table`, making sure the CSV columns match the table structure.
6. Open `Netflix_Dataset_Analysis.sql`.
7. Run the queries to explore the dataset and review the results.

> **Note:** The SQL script uses PostgreSQL-specific functions and syntax. It may need changes to run in MySQL or other database systems.
>
> Queries 6 and 13 use `CURRENT_DATE`. Because the dataset ends in 2021, they may return few or no rows.

## Project Files

```text
Netflix-Dataset-Analysis/
│
├── Netflix_Dataset_Analysis.sql
├── netflix_titles.csv
└── README.md
```

## Key Learning Outcomes

Through this project, I practiced using SQL to explore a real-world dataset, answer business questions, work with text and date fields, aggregate data, and extract insights from Netflix movies and TV shows.

## Author

**Mashraful Hasan**

- GitHub: [Mashruful-hasan](https://github.com/Mashruful-hasan)
