-- Calculate the average lastsemCGPA for each graduatedhighschooltype.
SELECT
    C.graduatedhighschooltype,
    ROUND(AVG(B.cgpa), 2) AS Average
FROM
    students AS A
    LEFT JOIN cgpa AS B ON A.lastsemCGPA = B.id
    LEFT JOIN graduatedhighschooltype AS C ON A.graduatedhighschooltype = C.id
GROUP BY
    C.graduatedhighschooltype;

-- Determine the most common mothersoccupation and fathersoccupation.
(
    SELECT
        CONCAT(
            'Most common mothers occupation is (',
            B.occupation,
            ') With Count: ',
            COUNT(A.id)
        ) AS 'Common Occupation'
    FROM
        students AS A
        LEFT JOIN occupation AS B ON A.mothersoccupation = B.id
    GROUP BY
        B.occupation
    ORDER BY
        COUNT(A.id) DESC
    LIMIT
        1
)
UNION
(
    SELECT
        CONCAT(
            'Most common fathers occupation is (',
            D.occupation,
            ') With Count: ',
            COUNT(D.id)
        ) AS 'Common Occupation'
    FROM
        students AS C
        LEFT JOIN occupation AS D ON C.fathersoccupation = D.id
    GROUP BY
        D.occupation
    ORDER BY
        COUNT(D.id) DESC
    LIMIT
        1
);

-- Find the total number of students attending seminars regularly.
SELECT
    CONCAT(
        'Total number of students attending seminars regularly: ',
        COUNT(*)
    ) AS 'Total Number'
FROM
    students AS A
    LEFT JOIN seminarsattendance AS B ON A.seminarsattendance = B.id
WHERE
    B.seminarsattendance = 'Yes';