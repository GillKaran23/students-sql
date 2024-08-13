-- Create a separate courses table and join it with the students table on course_id to show course names and grades.
SELECT
    A.id AS 'Students Id',
    B.courses,
    C.grade
FROM
    students AS A
    LEFT JOIN courses AS B ON A.course_id = B.id
    LEFT JOIN grade AS C ON A.grade = C.id;

-- Join table **parentalstatus** display only students who have **parentalstatus divorced**.
SELECT
    A.id AS 'Students Id',
    B.parentalstatus AS 'Parental Status'
FROM
    students AS A
    LEFT JOIN parentalstatus AS B ON A.parentalstatus = B.id
WHERE
    B.parentalstatus = 'Divorced';