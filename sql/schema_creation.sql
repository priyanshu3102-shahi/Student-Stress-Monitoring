CREATE TABLE stress (
    Gender INT,
    Age INT,
    "Do you have difficulty in concentrating on work?" INT,
    "Do you have difficulty in remembering things?" INT,
    "Do you get nervous or anxious easily?" INT,
    "Do you face difficulty in decision making?" INT,
    "Do you feel helpless?" INT,
    "Do you feel hopeless?" INT,
    "Do you get easily irritated?" INT,
    "Do you feel lonely?" INT,
    "Do you feel sad or depressed?" INT,
    "Do you face difficulty in sleeping?" INT,
    "Do you feel tired or fatigued easily?" INT,
    "Do you feel loss of interest in daily activities?" INT,
    "Do you feel difficulty in controlling anger?" INT,
    "Do you experience headache or body ache frequently?" INT,
    "Do you feel loss of appetite?" INT,
    "Do you feel digestive problems frequently?" INT,
    "Do you feel rapid heartbeat or chest pain?" INT,
    "Do you feel difficulty in breathing?" INT,
    "Do you feel sweating or trembling frequently?" INT,
    "Do you feel dizziness or fainting frequently?" INT,
    "Do you feel socially withdrawn?" INT,
    "Have you gained/lost weight?" INT,
    "Do you consume alcohol or drugs?" INT,
    "Which type of stress do you primarily experience?" VARCHAR(20)
);


COPY stress
FROM 'C:\Program Files\PostgreSQL\17\import\final_evaluation\Stress_Dataset.csv' DELIMITER ',' CSV HEADER;