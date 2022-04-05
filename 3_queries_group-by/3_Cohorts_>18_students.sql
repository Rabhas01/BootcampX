SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP by cohorts.name
HAVING count(students.*) >= 18
ORDER by  student_count;