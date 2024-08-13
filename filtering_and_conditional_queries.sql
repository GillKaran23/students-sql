-- List all students who have a lastsemCGPA of 3.00-3.49.
SELECT
    A.id,
    B.cgpa
FROM
    students AS A
    JOIN cgpa AS B ON A.lastsemCGPA = B.id
WHERE
    B.cgpa = '3.00-3.49';

-- Find students who commute by Bus and have an expextedCGPA <2.00
SELECT
    A.id,
    B.cgpa,
    C.transportation
FROM
    students AS A
    LEFT JOIN cgpa AS B ON A.expextedCGPA = B.id
    LEFT JOIN transportation AS C ON A.transportation = C.id
WHERE
    B.cgpa = '<2.00'
    AND C.transportation = 'Bus';

-- Select students who are married and have at least 2 siblings
SELECT
    A.id,
    B.siblings,
    C.partner
FROM
    students AS A
    LEFT JOIN siblings AS B ON A.siblings = B.id
    LEFT JOIN partner AS C ON A.partner = C.id
WHERE
    B.siblings = '2'
    AND C.partner = 'Yes';