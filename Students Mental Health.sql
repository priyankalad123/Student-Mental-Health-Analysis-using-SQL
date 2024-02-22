CREATE DATABASE student_mental_health;
use student_mental_health;
#### 1) What are the depression and suicide rates among different genders?
-- Depression rates by gender
SELECT Gender, COUNT(*) AS Depression_Count
FROM Students_data
WHERE Dep = 'Yes'
GROUP BY Gender;

-- Suicide rates by gender
SELECT Gender, COUNT(*) AS Suicide_Count
FROM Students_data
WHERE Suicide = 'Yes'
GROUP BY Gender;

#### 2) Is there a correlation between academic performance and depression severity?
-- Correlation between academic scores and depression severity
SELECT AVG(Academic) AS Average_Academic_Score, AVG(DepSev) AS Average_Depression_Severity
FROM Students_data;

-- Comparison of depression levels between high-performing and low-performing students
SELECT Academic, AVG(DepSev) AS Average_Depression_Severity
FROM Students_data
GROUP BY Academic;

#### 3) How does Japanese and English proficiency relate to depression severity?
-- Depression levels by Japanese proficiency
SELECT Japanese_cate, AVG(DepSev) AS Average_Depression_Severity
FROM Students_data
GROUP BY Japanese_cate;

-- Depression levels by English proficiency
SELECT English_cate, AVG(DepSev) AS Average_Depression_Severity
FROM Students_data
GROUP BY English_cate;

#### 4) Are students in intimate relationships more or less likely to experience depression?
-- Depression levels among students in intimate relationships vs. those who are not
SELECT Intimate, AVG(DepSev) AS Average_Depression_Severity
FROM Students_data
GROUP BY Intimate;

#### 5) What is the distribution of depression rates across different religions?
-- Depression rates among students based on religion
SELECT Religion, COUNT(*) AS Depression_Count
FROM Students_data
WHERE Dep = 'Yes'
GROUP BY Religion;

#### 6) Does the duration of stay affect depression levels among students?
-- Depression levels by stay duration
SELECT Stay_Cate, AVG(DepSev) AS Average_Depression_Severity
FROM Students_data
GROUP BY Stay_Cate;

#### 7) How do depression and suicide rates vary across different regions?
-- Depression rates by region
SELECT Region, COUNT(*) AS Depression_Count
FROM Students_data
WHERE Dep = 'Yes'
GROUP BY Region;

-- Suicide rates by region
SELECT Region, COUNT(*) AS Suicide_Count
FROM Students_data
WHERE Suicide = 'Yes'
GROUP BY Region;

#### 8) Is there a relationship between social support from various sources and depression severity?
-- Depression levels by social support from friends, family, etc.
SELECT 
    Partner_bi, Friends_bi, Parents_bi, Relative_bi, Professional_bi, 
    AVG(DepSev) AS Average_Depression_Severity
FROM Students_data
GROUP BY Partner_bi, Friends_bi, Parents_bi, Relative_bi, Professional_bi;