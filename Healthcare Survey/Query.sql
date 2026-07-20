select * from healthcare_dataset;

select count(*) as Total_Patients from healthcare_dataset;

select Gender,count(*) as Total_Patients 
from healthcare_dataset
group by Gender;

select top(3) Medical_Condition,count(*) as Top_3_Medical_Condition
from healthcare_dataset
group by Medical_Condition;

select top(3) Admission_Type,count(*) as Top_3_Admission_Type
from healthcare_dataset
group by Admission_Type;

select Blood_Type,count(*) as Blood_Type_Distribution
from healthcare_dataset
group by Blood_Type;

SELECT AVG(TotalPatients) AS AveragePatientsPerYear
FROM (
    SELECT year_of_admission, COUNT(*) AS TotalPatients
    FROM healthcare_dataset
    GROUP BY year_of_admission
) AS PatientCounts;

SELECT COUNT(*)
FROM healthcare_dataset
WHERE [Date_of_Admission] <= (SELECT MAX([Date_of_Admission]) FROM healthcare_dataset)
AND YEAR([Date_of_Admission]) = (SELECT YEAR(MAX([Date_of_Admission])) FROM healthcare_dataset);

SELECT COUNT(DISTINCT Doctor) AS TotalDoctors
FROM healthcare_dataset;

SELECT COUNT(DISTINCT Hospital) AS TotalHospitals
FROM healthcare_dataset;

SELECT 
    age_group,
    (COUNT(*) * 100.0) / (SELECT COUNT(*) FROM healthcare_dataset) AS Percentage
FROM healthcare_dataset
GROUP BY age_group;

SELECT COUNT(*) AS Young_Patients
FROM healthcare_dataset
WHERE age_group = 'Young';

SELECT COUNT(*) AS Young_Male_Patients
FROM healthcare_dataset
WHERE age_group = 'Young' AND gender = 'Male';

SELECT COUNT(*) AS Young_Female_Patients
FROM healthcare_dataset
WHERE age_group = 'Young' AND gender = 'Female';

select top(3) Medical_Condition,count(*) as Top_3_Medical_Condition_in_Young
from healthcare_dataset
where age_group = 'Young'
group by Medical_Condition
order by Top_3_Medical_Condition_in_Young desc;

select top(3) Admission_Type,count(*) as TopAdmission_Type_in_Young
from healthcare_dataset
where age_group='Young'
group by Admission_Type
order by TopAdmission_Type_in_Young desc;

select top(3) Test_Results,count(*) as TopResults_in_Young
from healthcare_dataset
where age_group='Young'
group by Test_Results
order by TopResults_in_Young desc;

SELECT COUNT(*) AS Adult_Patients
FROM healthcare_dataset
WHERE age_group = 'Adult';

SELECT COUNT(*) AS Adult_Male_Patients
FROM healthcare_dataset
WHERE age_group = 'Adult' AND gender = 'Male';

SELECT COUNT(*) AS Adult_Female_Patients
FROM healthcare_dataset
WHERE age_group = 'Adult' AND gender = 'Female';

select top(3) Medical_Condition,count(*) as Top_3_Medical_Condition_in_Adult
from healthcare_dataset
where age_group = 'Adult'
group by Medical_Condition
order by Top_3_Medical_Condition_in_Adult desc;

select top(3) Admission_Type,count(*) as TopAdmission_Type_inAdult
from healthcare_dataset
where age_group='Adult'
group by Admission_Type
order by TopAdmission_Type_inAdult desc;

select top(3) Test_Results,count(*) as TopResults_in_Adult
from healthcare_dataset
where age_group='Adult'
group by Test_Results
order by TopResults_in_Adult desc;

SELECT COUNT(*) AS Senior_Patients
FROM healthcare_dataset
WHERE age_group = 'Senior';

SELECT COUNT(*) AS Senior_Male_Patients
FROM healthcare_dataset
WHERE age_group = 'Senior' AND gender = 'Male';

SELECT COUNT(*) AS Senior_Female_Patients
FROM healthcare_dataset
WHERE age_group = 'Senior' AND gender = 'Female';

select top(3) Medical_Condition,count(*) as Top_3_Medical_Condition_in_Senior
from healthcare_dataset
where age_group = 'Senior'
group by Medical_Condition
order by Top_3_Medical_Condition_in_Senior desc;

select top(3) Admission_Type,count(*) as TopAdmission_Type_in_Senior
from healthcare_dataset
where age_group='Senior'
group by Admission_Type
order by TopAdmission_Type_in_Senior desc;

select top(3) Test_Results,count(*) as TopResults_in_Senior
from healthcare_dataset
where age_group='Senior'
group by Test_Results
order by TopResults_in_Senior desc;

select avg(Days_of_stay) as Days_of_Stay
from healthcare_dataset;

SELECT AVG(Billing_Amount / Days_of_Stay) AS Average_Per_Day_Charge
FROM healthcare_dataset;

select sum(Billing_Amount) as Total_Revenue
from healthcare_dataset;



