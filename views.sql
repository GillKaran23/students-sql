-- Create a view showing students with a lastsemCGPA and expextedCGPA both are 2.50-2.99.
CREATE VIEW cgpaData AS
SELECT
    A.id,
    B.cgpa AS lastsemCGPA,
    C.cgpa AS expectedCGPA
FROM
    students AS A
    INNER JOIN cgpa AS B ON B.id = A.lastsemCGPA
    INNER JOIN cgpa AS C ON C.id = A.expextedCGPA
WHERE
    B.cgpa = '2.50-2.99'
    AND C.cgpa = '2.50-2.99';

SELECT * FROM cgpaData;

-- Create a view displaying all students who have additional work and attend seminars regularly.
CREATE VIEW studentslist AS
SELECT
    A.id,
    B.additionalwork AS 'Additional Work',
    C.seminarsattendance AS 'Seminar Attendance'
FROM
    students AS A
    INNER JOIN additionalwork AS B ON B.id = A.additionalwork
    INNER JOIN seminarsattendance AS C ON C.id = A.seminarsattendance
WHERE
    B.additionalwork = 'Yes'
    AND C.seminarsattendance = 'Yes';

SELECT * FROM studentslist;


-- Delete Both the VIEWS.
DROP VIEW cgpaData;
DROP VIEW studentsList;