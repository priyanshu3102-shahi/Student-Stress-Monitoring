--Advance SQL Queries

--Rank Students by Composite Score within Gender and Age Band
SELECT *FROM 
(SELECT gender, age_band, composite_stress_score,
        DENSE_RANK() OVER (PARTITION BY gender, age_band ORDER BY composite_stress_score DESC) AS rank
    	FROM (SELECT gender,
            CASE 
                WHEN age BETWEEN 15 AND 30 THEN 'Student'
                ELSE 'Non-Student'
            END AS age_band,
            composite_stress_score FROM stress) sub_query
) ranked
WHERE rank <= 10;


--Filters for Age (15–30), Gender, and Stress Type
SELECT 
    gender, recoded_gender, age_valid_flag, stress_type,
    COUNT(*) AS total_count_of_stress_type,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY gender), 2) AS percentage_within_gender
FROM stress
WHERE age BETWEEN 15 AND 30
GROUP BY 1, 2, 3, 4
ORDER BY total_count_of_stress_type DESC;
