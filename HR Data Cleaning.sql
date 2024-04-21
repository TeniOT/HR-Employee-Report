CREATE DATABASE projects;

-- ** Step 1 - IMPORTING DATA ------

USE projects;


-- ** STEP 2 - Dataset Walkthrough ------


SELECT * FROM hr;



-- ** STEP 3 - Data Cleaning/Wrangling ------

ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

DESCRIBE hr;

SELECT birthdate FROM hr;

SELECT hire_date FROM hr;

SELECT termdate FROM hr;


-- Limitation: Using updated version with code types, therfore need to use 'set sql safe updates' ----

-- used for when updating datatype to help secure data in database ----
SET sql_safe_updates = 0;


-- modifying data types (for Date datatypes)----

-- a) birtdate ----

UPDATE hr
SET birthdate = CASE
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate,'%m/%d/%Y'),'%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate,'%m-%d-%Y'),'%Y-%m-%d')
	ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;



-- b) hire_date ----

UPDATE hr
SET hire_date = CASE
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d')
	ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;



-- c) termdate ----

UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate !='', date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE TRUE;

----
SET sql_mode = 'ALLOW_INVALID_DATES';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;



-- ** STEP 4 - Data Exploration/Preparation ------

-- For easy analysis, add 'age' column to dataset  ----

-- a) to give number of years (Curdate = currentdate)

ALTER TABLE hr ADD COLUMN age INT;

UPDATE hr
SET age = timestampdiff(YEAR, birthdate, CURDATE());


-- b) Aggregate functions to give age range (results: youngest = -45yrs, Oldest = 58yrs) ----

SELECT
	min(age) AS youngest,
    max(age) AS oldest
FROM hr;

-- c) to avoid error data analysis or outliers affecting data viz, we can see youngest age (-45yrs), therefore count possible number of <18yrs to exclude from data ----
SELECT count(*) FROM hr WHERE age <18;

-- d) looking at questions for data analysis age range requested, to chech age range >18yrs and still currently employed as per wanted data stated above (youngest = 21yrs and oldest = 58yrs)
SELECT
	min(age) AS youngest,
    max(age) AS oldest
FROM hr
WHERE age >=18 AND termdate = '0000-00-00';




-- ** STEP 5- Data Analysis for Viz------




