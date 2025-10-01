--Data Cleaning and Preprocessing

--Type Normalization (Cast Likert items to INT)
SELECT 
	CAST(Gender AS INT) AS "Gender",
    CAST(Age AS INT) AS "Age",
    CAST("Have you recently experienced stress in your life?" AS INT) AS "Have you recently experienced stress in your life?",
    CAST("Have you noticed a rapid heartbeat or palpitations?" AS INT) AS "Have you noticed a rapid heartbeat or palpitations?",
    CAST("Have you been dealing with anxiety or tension recently?" AS INT) AS "Have you been dealing with anxiety or tension recently?",
	CAST("Do you face any sleep problems or difficulties falling asleep?" AS INT) AS "Do you face any sleep problems or difficulties falling asleep?",
	CAST("Have you been dealing with anxiety or tension recently?.1" AS INT) AS "Have you been dealing with anxiety or tension recently?.1",
    CAST("Have you been getting headaches more often than usual?" AS INT) AS "Have you been getting headaches more often than usual?",
	CAST("Do you get irritated easily?" AS INT) AS "Do you get irritated easily?",
	CAST("Do you have trouble concentrating on your academic tasks?" AS INT) AS "Do you have trouble concentrating on your academic tasks?",
	CAST("Have you been feeling sadness or low mood?" AS INT) AS "Have you been feeling sadness or low mood?",
	CAST("Have you been experiencing any illness or health issues?" AS INT) AS "Have you been experiencing any illness or health issues?",
	CAST("Do you often feel lonely or isolated?" AS INT) AS "Do you often feel lonely or isolated?",
	CAST("Do you feel overwhelmed with your academic workload?" AS INT) AS "Do you feel overwhelmed with your academic workload?",
	CAST("Are you in competition with your peers, and does it affect you?" AS INT) AS "Are you in competition with your peers, and does it affect you?",
	CAST("Do you find that your relationship often causes you stress?" AS INT) AS "Do you find that your relationship often causes you stress?",
	CAST("Are you facing any difficulties with your professors or instructors?" AS INT) AS "Are you facing any difficulties with your professors or instructors?",
	CAST("Is your working environment unpleasant or stressful?" AS INT) AS "Is your working environment unpleasant or stressful?",
	CAST("Do you struggle to find time for relaxation and leisure activities?" AS INT) AS "Do you struggle to find time for relaxation and leisure activities?",
	CAST("Is your hostel or home environment causing you difficulties?" AS INT) AS "Is your hostel or home environment causing you difficulties?",
	CAST("Do you lack confidence in your academic performance?" AS INT) AS "Do you lack confidence in your academic performance?",
	CAST("Do you lack confidence in your choice of academic subjects?" AS INT) AS "Do you lack confidence in your choice of academic subjects?",
	CAST("Academic and extracurricular activities conflicting for you?" AS INT) AS "Academic and extracurricular activities conflicting for you?",
	CAST("Do you attend classes regularly?" AS INT) AS "Do you attend classes regularly?",
	CAST("Have you gained/lost weight?" AS INT) AS "Have you gained/lost weight?"
FROM stress;


--Recode Gender (0 -> Female, 1 -> Male)
ALTER TABLE stress
ADD COLUMN recoded_gender VARCHAR(10);

UPDATE stress
SET recoded_gender = CASE
    WHEN Gender = 0 THEN 'Female'
    WHEN Gender = 1 THEN 'Male'
END;

SELECT * FROM stress;


--Standardize Target Values to Title Case
ALTER TABLE stress
ADD COLUMN Stress_Type VARCHAR;

UPDATE stress
SET Stress_Type = INITCAP(TRIM("Which type of stress do you primarily experience?"));

SELECT * FROM stress;


--Age Valid Flag (for 15–30 student band)
ALTER TABLE stress
ADD COLUMN Age_Valid_Flag INT;

UPDATE stress
SET Age_Valid_Flag = CASE
    WHEN Age BETWEEN 15 AND 30 THEN 1
    ELSE 0
END;

SELECT * FROM stress;


--Composite Stress Score
ALTER TABLE stress
ADD COLUMN Composite_Stress_Score INT;

UPDATE stress
SET Composite_Stress_Score = 
    "Have you recently experienced stress in your life?"+
    "Have you noticed a rapid heartbeat or palpitations?"+
    "Have you been dealing with anxiety or tension recently?"+
    "Do you face any sleep problems or difficulties falling asleep?"+
    "Have you been dealing with anxiety or tension recently?.1"+
    "Have you been getting headaches more often than usual?"+
    "Do you get irritated easily?"+
    "Do you have trouble concentrating on your academic tasks?"+
    "Have you been feeling sadness or low mood?"+
    "Have you been experiencing any illness or health issues?"+
    "Do you often feel lonely or isolated?"+
    "Do you feel overwhelmed with your academic workload?"+
    "Are you in competition with your peers, and does it affect you?"+
    "Do you find that your relationship often causes you stress?"+
    "Are you facing any difficulties with your professors or instructors?"+
    "Is your working environment unpleasant or stressful?"+
    "Do you struggle to find time for relaxation and leisure activities?"+
    "Is your hostel or home environment causing you difficulties?"+
    "Do you lack confidence in your academic performance?"+
    "Do you lack confidence in your choice of academic subjects?"+
    "Academic and extracurricular activities conflicting for you?"+
    "Do you attend classes regularly?"+
    "Have you gained/lost weight?";

SELECT * FROM stress;
