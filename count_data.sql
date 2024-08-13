SELECT CONCAT('Total Students: ', COUNT(*)) AS COUNTS 
FROM students

UNION

SELECT CONCAT('Number of ', B.sex, ' Students: ', COUNT(*)) AS student_count 
FROM students AS A 
LEFT JOIN sex AS B ON A.sex = B.id 
GROUP BY B.sex

UNION

SELECT CONCAT('Between the Age of ', C.age, ' Students: ', COUNT(*)) AS student_count 
FROM students AS A 
LEFT JOIN age AS C ON A.age = C.id 
GROUP BY C.age

UNION 

SELECT CONCAT('Students Having ', D.scholarshiptype, ' Scholarship are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN scholarshiptype D ON A.scholarshiptype = D.id 
GROUP BY D.scholarshiptype

UNION 

SELECT CONCAT('Students with ', E.graduatedhighschooltype, ' Graduation Type are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN graduatedhighschooltype E ON A.graduatedhighschooltype = E.id 
GROUP BY E.graduatedhighschooltype

UNION

SELECT CONCAT('Students Having Weekly Study ', F.weeklystudyhours, ' are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN weeklystudyhours F ON A.weeklystudyhours = F.id 
GROUP BY F.weeklystudyhours

UNION

SELECT CONCAT('Students Having Last Sem ', G.cgpa, ' CGPA are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN cgpa G ON A.lastsemCGPA = G.id 
GROUP BY G.cgpa

UNION

SELECT CONCAT('Students with ', H.siblings, ' Siblings are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN siblings H ON A.siblings = H.id 
GROUP BY H.siblings

UNION

SELECT CONCAT('Students Having Parental Status ', I.parentalstatus, ' are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN parentalstatus I ON A.parentalstatus = I.id 
GROUP BY I.parentalstatus

UNION

SELECT CONCAT('Students With Transportation Mode of ', J.transportation, ' are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN transportation J ON A.transportation = J.id 
GROUP BY J.transportation

UNION

SELECT CONCAT('Students Having Attendance Status ', K.attendance, ' are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN attendance K ON A.attendance = K.id 
GROUP BY K.attendance

UNION

SELECT CONCAT('Students Having ', L.courses, ' Course are: ', COUNT(*)) AS student_count 
FROM students A 
LEFT JOIN courses L ON A.course_id = L.id 
GROUP BY L.courses;
