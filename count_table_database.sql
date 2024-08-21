-- Show all the Databases.
SHOW Databases;


-- Count Total Tables in Database.
SELECT COUNT(*) AS table_count
FROM information_schema.tables
WHERE table_schema = 'students';


-- Display Table with the Columns count.
SELECT 
    table_name AS 'Table',
    COUNT(*) AS 'columns'
FROM 
    information_schema.columns
WHERE 
    table_schema = 'students'
GROUP BY 
    table_name;