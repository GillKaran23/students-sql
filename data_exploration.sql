-- Count Total Students.
SELECT
    CONCAT('Total Students: ', COUNT(*)) AS COUNTS
FROM
    students;

-- Calculate the percentage of students receiving each type of scholarship.
SELECT
    CONCAT(
        'Percent of students having Scholarship ',
        B.scholarshiptype,
        ' are : ',
        ROUND(
            (
                COUNT(*) /(
                    SELECT
                        COUNT(*)
                    FROM
                        students
                )
            ) * 100,
            2
        ),
        '%'
    ) AS 'Scholarship Percentage'
FROM
    students A
    LEFT JOIN scholarshiptype AS B ON A.scholarshiptype = B.id
GROUP BY
    A.scholarshiptype;

-- Calculate the count of Male Students of CSE who has Full Scholarship having partner.
SELECT
    COUNT(A.id) AS 'Male CSE Students with Full Scholarship and Partner'
FROM
    students AS A
    INNER JOIN sex AS B ON A.sex = B.id
    INNER JOIN courses AS C ON A.course_id = C.id
    INNER JOIN scholarshiptype AS D ON A.scholarshiptype = D.id
    INNER JOIN partner AS E ON A.partner = E.id
WHERE
    C.courses = 'CSE'
    AND D.scholarshiptype = 'Full'
    AND B.sex = 'Male'
    AND E.partner = 'Yes';

-- Find the course which has Most and Least Students with Count
SELECT 
    CONCAT('Students in the ', B.courses, ' are: ', COUNT(*)) AS CourseCount
FROM 
    students AS A 
JOIN 
    courses AS B 
ON 
    A.course_id = B.id 
GROUP BY 
    B.courses 
HAVING 
    COUNT(*) = (SELECT MIN(course_count) 
                FROM (SELECT COUNT(*) AS course_count 
                      FROM students AS A 
                      JOIN courses AS B ON A.course_id = B.id 
                      GROUP BY B.courses) AS min_counts)
OR 
    COUNT(*) = (SELECT MAX(course_count) 
                FROM (SELECT COUNT(*) AS course_count 
                      FROM students AS A 
                      JOIN courses AS B ON A.course_id = B.id 
                      GROUP BY B.courses) AS max_counts)
ORDER BY 
    COUNT(*) DESC;
