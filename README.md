# Student-Stress-Monitoring
This repository hosts a data analysis project focused on understanding the various factors contributing to student stress. The core of the project is a single, comprehensive survey dataset (Stress_Dataset.csv) where students rated their experiences and symptoms on a Likert scale (1-5).

The analysis utilizes SQL to clean the data, calculate statistical measures, identify significant stress factors, and categorize the primary type of stress experienced by the students.

_______________________________________________________________________________________________________________________________________________________________________

## **📂 Project Directory Tree**
student_stress_monitor/<br>
├── data/<br>
│   └── Stress_Dataset.csv          # Core survey data <br>
├── sql/<br>
│   ├── schema_creation.sql  # CREATE TABLE statement and column renaming logic <br>
│   ├── Data_cleaning_and_Preprocessing.sql         # Preprocessing, normalization and cleaning <br>
|   ├── Stress_and_Cohort_Analysis.sql              # Class distribution and Distress cohort Analysis  <br>
│   └── Advance_queries.sql      # Advanced analysis of stress factors  <br>
└── README.md <br>

_______________________________________________________________________________________________________________________________________________________________________

## **🛠️ Technology Stack**
- Database: SQL (e.g., PostgreSQL, MySQL)
- Data Source: Single-table survey data (Stress_Dataset.csv)

_______________________________________________________________________________________________________________________________________________________________________

## **🗃️ Dataset & Schema**
The dataset contains 26 columns, primarily consisting of integer responses (1-5 scale) to specific questions about physiological symptoms, academic workload, environmental factors, and lifestyle habits.

A critical step in this analysis is Data Cleaning within the SQL environment to replace the long survey questions with clean, concise column names (e.g., changing "Do you feel overwhelmed with your academic workload?" to Academic_Overload).

- Demographics: Gender, Age	_(INTEGER)_
- Academic Stress:	Academic_Overload, Performance_Confidence	_(INTEGER (1-5))_
- Physiological Symptoms:	Heartbeat_Rapid, Headaches_Often, Sleep_Problems	_(INTEGER (1-5))_
- Emotional/Social Stress:	Loneliness, Relationship_Stress, Low_Mood	_(INTEGER (1-5))_
- Target Variable:	Primary_Stress_Type	_(TEXT)_

_______________________________________________________________________________________________________________________________________________________________________

## **🚀 Key Analysis Areas**
The SQL scripts provided focus on deriving actionable insights from the survey responses:

1. Descriptive Analysis (Stress_and_Cohort_Analysis.sql)
- Average Stressors: Calculating the average score for each individual stress factor (e.g., AVG(Academic_Overload)) to identify the most common issues across the student body.
- Demographic Insights: Analyzing the mean scores of specific stressors when grouped by Gender and Age cohorts.
- Stress Type Distribution: Determining the count and percentage distribution of the Primary_Stress_Type.

2. Correlation & Ranking (Advance_queries.sql)
- High-Risk Identification: Using conditional logic to identify the percentage of students who rated multiple key factors (e.g., Sleep_Problems and Academic_Overload) at a high-stress level (e.g., score of 4 or 5).
- Predictor Isolation: Ranking the symptoms and habits based on the average score correlation with the highest reported stress levels in life.
- Behavioral Link: Comparing the average stress level for students who report regular class attendance versus those who do not.

_______________________________________________________________________________________________________________________________________________________________________

## **🧑‍💻 Getting Started**
1. Database Setup: Import the Stress_Dataset.csv file from the data/ directory into your SQL environment.

2. Schema and Cleaning: Run the sql/schema_creation.sql and sql/Data_cleaning_and_Preprocessing.sql script. This script must not only create the table but also apply the crucial step of renaming the columns to clean, query-friendly aliases.

3. Run Analysis: Execute the queries in the subsequent sql/ files to perform the analysis and extract the final insights.
