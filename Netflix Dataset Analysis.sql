
CREATE TABLE netflix_table
(
    show_id       VARCHAR(6),
    type          VARCHAR(10),
    title         VARCHAR(150),
    director      VARCHAR(208),
    casts         VARCHAR(1000),
    country       VARCHAR(150),
    date_added    VARCHAR(50),
    release_year  INT,
    rating        VARCHAR(10),
    duration      VARCHAR(15),
    listed_in     VARCHAR(100),
    description   VARCHAR(250)
);

Select * from netflix_table

Select 
		count(*) As total_count 
from netflix_table

Select 
	  *
from netflix_table

Select 
Distinct type
from netflix_table

---Q1. Count the number of Movies vs TV Shows

Select * from netflix_table

Select 
type,
Count(*) As Total_Content
from netflix_table
Group BY type


___Q2. Find the most common rating for movies and TV shows

SELECT 
type, 
rating
From (
	Select 
	type,
	rating,
	Count(*),
	Rank() Over(PARTITION BY Type Order BY Count(*) DESC) as Ranking
	from netflix_table
	Group BY 1,2
	
)AS t1

Where Ranking = 1


---Q3:List all movies released in a specific year (e.g., 2020)

Select * from netflix_table

Select 
	release_year,
	type
	from netflix_table
	Where release_year = 2020
	AND type = 'Movie'

---Q4: Find the top 5 countries with the most content on Netflix

Select 
	UNNEST(STRING_TO_ARRAY(country,','))As New_country ,
	count(show_id) As Total_Content
from netflix_table
group by 1
ORDER BY 2 DESC
LIMIT 5

---Q5: Identify the longest movie

Select * from netflix_table


SELECT *
FROM netflix_table
WHERE 
    type = 'Movie'
    AND duration = (
        SELECT MAX(duration)
        FROM netflix_table
        WHERE type = 'Movie'
    );

---Q6: Find content added in the last 5 years

Select 
	  *
	 
from netflix_table
WHERE 
	 TO_DATE(date_added,'Month DD, YYYY')>= CURRENT_DATE - INTERVAL '5 years'

---Q7: Find all the movies/TV shows by director 'Rajiv Chilaka'!

Select *
	from netflix_table 
	where director = 'Rajiv Chilaka'

----Q8: List all TV shows with more than 5 seasons

Select * 
	from netflix_table
	where type = 'TV Show'
	And duration>= '5season'

----Q9: Count the number of content items in each genre

Select
	UNNEST(STRING_TO_ARRAY(listed_in, ','))AS GENRE,
	Count(show_id)
	from netflix_table
	Group BY 1


---Q10. Find the average movie duration for each release year.

SELECT
    release_year,
    ROUND(AVG(SPLIT_PART(duration, ' ', 1)::NUMERIC), 2) AS avg_duration
FROM netflix_table
WHERE type = 'Movie'
GROUP BY release_year
ORDER BY release_year DESC;

---Q11: List all movies that are documentaries

Select *
	FROM NETFLIX_TABLE
	WHere listed_in = 'Documentaries'
	

---Q12: Find all content without a director

Select *
	FROM netflix_table
	where director IS NULL


---Q13: Find how many movies actor 'Salman Khan' appeared in last 10 years!

Select *
	from netflix_table
	WHere casts LIKE '%Salman Khan%'
	AND
	release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10



---Q14: Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
the description field. Label content containing these keywords as 'Bad' and all other 
content as 'Good'. Count how many items fall into each category.

SELECT 
    category,
    COUNT(*) AS content_count
FROM (
    SELECT 
        CASE 
            WHEN description ILIKE '%kill%' OR description ILIKE '%violence%' THEN 'Bad'
            ELSE 'Good'
        END AS category
    FROM netflix_table
) AS categorized_content
GROUP BY category;


---Q16. Find the month with the highest number of content additions to Netflix_table.

SELECT
    TO_CHAR(TO_DATE(date_added, 'Month DD, YYYY'), 'Month') AS month,
    COUNT(*) AS total_content
FROM netflix_table
WHERE date_added IS NOT NULL
GROUP BY month
ORDER BY total_content DESC




















