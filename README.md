# IMDB Movie Data Analysis

## Project Overview
This project uses SQL to explore and analyze an IMDB movie dataset to uncover patterns and trends across Bollywood, Hollywood, and other film industries.

## Tools & Technologies
- **Database:** MySQL
- **Language:** SQL (Joins, Aggregations, Filtering, Subqueries)

## Dataset
The dataset includes information on movies, actors, studios, languages, and IMDB ratings.

## Business Questions Answered
- Which are the top 5 highest rated Bollywood movies?
- How many movies are available per industry (Bollywood vs Hollywood)?
- Which studios have the most movies in the database?
- What are the top 10 highest rated movies across all languages?
- Which movies belong to the Thor and Captain America franchises?
- What are all Shah Rukh Khan movies and their IMDB ratings?
- Which Bollywood movies were released in 2022?
- How many movies does each Bollywood studio have?

## Key SQL Concepts Used
- INNER JOIN (movies, actors, languages tables)
- GROUP BY with COUNT for aggregations
- ORDER BY with LIMIT for top-N analysis
- WHERE with LIKE for pattern matching
- Multi-table joins for actor-movie relationships

## Project Structure
| File | Description |
|------|-------------|
| IMDB_data_query.sql | All analysis queries with comments |
| imdbmovies.sql | Database schema and data |
| IMDB DATASET.pdf | Dataset reference |
