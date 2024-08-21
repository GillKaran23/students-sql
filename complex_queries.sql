-- Write a query to find students who do not take notes but have an attendance record of Always.
Select A.id, B.attendance, C.notes_classes AS takingnotes 
FROM students AS A
JOIN attendance AS B ON A.attendance = B.id
JOIN notes_classes AS C ON A.takingnotes = C.id 
WHERE B.attendance = 'Always'
AND C.notes_classes = 'Never';


-- List all students who belong to the age group 22-25, have a partner, and whose parentalstatus is Died - One of Them Or Both.
Select A.id, B.age, C.parentalstatus 
FROM students AS A
JOIN age AS B ON A.age = B.id
JOIN parentalstatus AS C ON A.parentalstatus = C.id 
WHERE B.age = '22-25'
AND C.parentalstatus = 'Died - One of Them Or Both';