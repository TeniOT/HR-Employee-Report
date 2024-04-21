# HR Employee Report Dashboard

 Dataset cleaned and queried to visualisation for HR Employee data report
 
![Screenshot](https://github.com/TeniOT/HR-Employee-Report/assets/164643376/41ed1b0d-f0a4-4ab1-a1b8-1c8994b1d741)

## Tools

#### Dataset 
- CSV file with over 22000 rows from the year 2000 to 2020.

#### Data Cleaning & Analysis 
- MySQL

#### Data Visualization 
- PowerBI

---------
### Data Questions
1. What is the gender breakdown of employees in the company?
2. What is the race/ethnicity breakdown of employees in the company?
3. What is the age distribution of employees in the company?
4. How many employees work at headquarters versus remote locations?
5. What is the average length of employment for employees who have been terminated?
6. How does the gender distribution vary across departments and job titles?
7. What is the distribution of job titles across the company?
8. Which department has the highest turnover rate?
9. What is the distribution of employees across locations by state?
10. How has the company's employee count changed over time based on hire and term dates?
11. What is the tenure distribution for each department?

-----
### Summary of Findings
- There are more Male employees vs Female employees
- White race is the most dominant while Native Hawaiian and American Indian are the least dominant.
- The youngest employee is 21 years old and the oldest is 58 years old
- More number of employees between the ages of 25-34yrs followed by 35-44yrs while the smallest group was 55-64yrs.
- A large number of employees work at the headquarters vs remotely.
- The average length of employment for terminated employees is around 8 years.
- The gender distribution across departments is fairly balanced but there are generally more male than female employees.
- The Auditing department has the highest turnover rate followed by Legal. The least turn-over rate are in Services, Business Development and Marketing department.
- A large number of employees come from the state of Ohio.
- The net change in employees count has increased over the years.
- The average tenure for each department is about 9 years with Sales having the highest and Legal, Human Resources, Product Management, Training, Support and Business Development having the lowest.

### Limitations
- Negative ages in values - These were excluded during querying prompting the ages used to 18 years and above.
- Some 'termdates' were far into the future and were not included in the analysis (1599 records). The only term dates used were those less than or equal to the current date - 21/04/2024.
