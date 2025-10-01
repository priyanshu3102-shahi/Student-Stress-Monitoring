--Stress and Cohort Analysis

--Class Distribution
SELECT stress_type, COUNT(*) AS stress_count,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM stress), 2) AS percentage
FROM stress
GROUP BY stress_type;


--Top Drivers(Proxy)
SELECT item, 
       ROUND(distress_mean - overall_mean, 2) AS difference
FROM (
    SELECT 'Have you recently experienced stress in your life?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Have you recently experienced stress in your life?" END) AS distress_mean,
           AVG("Have you recently experienced stress in your life?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Have you noticed a rapid heartbeat or palpitations?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Have you noticed a rapid heartbeat or palpitations?" END) AS distress_mean,
           AVG("Have you noticed a rapid heartbeat or palpitations?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Have you been dealing with anxiety or tension recently?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Have you been dealing with anxiety or tension recently?" END) AS distress_mean,
           AVG("Have you been dealing with anxiety or tension recently?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you face any sleep problems or difficulties falling asleep?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Do you face any sleep problems or difficulties falling asleep?" END) AS distress_mean,
           AVG("Do you face any sleep problems or difficulties falling asleep?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Have you been dealing with anxiety or tension recently?.1' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Have you been dealing with anxiety or tension recently?.1" END) AS distress_mean,
           AVG("Have you been dealing with anxiety or tension recently?.1") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Have you been getting headaches more often than usual?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Have you been getting headaches more often than usual?" END) AS distress_mean,
           AVG("Have you been getting headaches more often than usual?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you get irritated easily?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Do you get irritated easily?" END) AS distress_mean,
           AVG("Do you get irritated easily?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you have trouble concentrating on your academic tasks?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Do you have trouble concentrating on your academic tasks?" END) AS distress_mean,
           AVG("Do you have trouble concentrating on your academic tasks?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Have you been feeling sadness or low mood?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%'
		   THEN "Have you been feeling sadness or low mood?" END) AS distress_mean,
           AVG("Have you been feeling sadness or low mood?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Have you been experiencing any illness or health issues?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%'
		   THEN "Have you been experiencing any illness or health issues?" END) AS distress_mean,
           AVG("Have you been experiencing any illness or health issues?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you often feel lonely or isolated?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%'
		   THEN "Do you often feel lonely or isolated?" END) AS distress_mean,
           AVG("Do you often feel lonely or isolated?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you feel overwhelmed with your academic workload?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%'
		   THEN "Do you feel overwhelmed with your academic workload?" END) AS distress_mean,
           AVG("Do you feel overwhelmed with your academic workload?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Are you in competition with your peers, and does it affect you?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Are you in competition with your peers, and does it affect you?" END) AS distress_mean,
           AVG("Are you in competition with your peers, and does it affect you?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you find that your relationship often causes you stress?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Do you find that your relationship often causes you stress?" END) AS distress_mean,
           AVG("Do you find that your relationship often causes you stress?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Are you facing any difficulties with your professors or instruc' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Are you facing any difficulties with your professors or instruc" END) AS distress_mean,
           AVG("Are you facing any difficulties with your professors or instruc") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Is your working environment unpleasant or stressful?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Is your working environment unpleasant or stressful?" END) AS distress_mean,
           AVG("Is your working environment unpleasant or stressful?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you struggle to find time for relaxation and leisure activit' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Do you struggle to find time for relaxation and leisure activit" END) AS distress_mean,
           AVG("Do you struggle to find time for relaxation and leisure activit") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Is your hostel or home environment causing you difficulties?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Is your hostel or home environment causing you difficulties?" END) AS distress_mean,
           AVG("Is your hostel or home environment causing you difficulties?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you lack confidence in your academic performance?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%'
		   THEN "Do you lack confidence in your academic performance?" END) AS distress_mean,
           AVG("Do you lack confidence in your academic performance?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you lack confidence in your choice of academic subjects?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Do you lack confidence in your choice of academic subjects?" END) AS distress_mean,
           AVG("Do you lack confidence in your choice of academic subjects?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Academic and extracurricular activities conflicting for you?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Academic and extracurricular activities conflicting for you?" END) AS distress_mean,
           AVG("Academic and extracurricular activities conflicting for you?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Do you attend classes regularly?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Do you attend classes regularly?" END) AS distress_mean,
           AVG("Do you attend classes regularly?") AS overall_mean
    FROM stress
    UNION ALL
    SELECT 'Have you gained/lost weight?' AS item,
           AVG(CASE WHEN "stress_type" LIKE 'Distress%' 
		   THEN "Have you gained/lost weight?" END) AS distress_mean,
           AVG("Have you gained/lost weight?") AS overall_mean
    FROM stress
) t
ORDER BY difference DESC
LIMIT 10;