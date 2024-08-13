-- Use a subquery to find the students who have the Above 3.49 lastsemCGPA in each graduatedhighschooltype.
SELECT
    A.id,
    (
        SELECT
            C.graduatedhighschooltype
        FROM
            graduatedhighschooltype AS C
        WHERE
            C.id = A.graduatedhighschooltype
    ) AS graduatedhighschooltype,
    (
        SELECT
            B.cgpa
        FROM
            cgpa AS B
        WHERE
            B.id = A.lastsemCGPA
            AND B.cgpa = 'Above 3.49'
    ) AS cgpa
FROM
    students AS A
WHERE
    A.lastsemCGPA IN (
        SELECT
            B.id
        FROM
            cgpa AS B
        WHERE
            B.cgpa = 'Above 3.49'
    );

-- Use a subquery to list students who have the same expextedCGPA as their lastsemCGPA.
SELECT
    A.id,
    (
        SELECT
            B.cgpa
        FROM
            cgpa AS B
        WHERE
            B.id = A.lastsemCGPA
    ) AS lastsemCGPA,
    (
        SELECT
            C.cgpa
        FROM
            cgpa AS C
        WHERE
            C.id = A.expextedCGPA
    ) AS expectedCGPA
FROM
    students AS A
WHERE
    A.lastsemCGPA = A.expextedCGPA;