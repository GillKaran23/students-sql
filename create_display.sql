-- Create Table student_name which has two columns id, std_name.
CREATE TABLE student_name (
    id VARCHAR(250) PRIMARY KEY,
    std_name VARCHAR(250)
);


-- Insert the values in student_name according to the id in students table.
INSERT INTO student_name (id, std_name) VALUES
('STUDENT1', 'John Doe'),
('STUDENT2', 'Jane Smith'),
('STUDENT3', 'Michael Johnson'),
('STUDENT4', 'Emily Davis'),
('STUDENT5', 'Daniel Wilson'),
('STUDENT6', 'Sophia Martinez'),
('STUDENT7', 'James Anderson'),
('STUDENT8', 'Olivia Taylor'),
('STUDENT9', 'Ethan Thomas'),
('STUDENT10', 'Isabella Moore'),
('STUDENT11', 'Lucas Jackson'),
('STUDENT12', 'Mia White'),
('STUDENT13', 'Alexander Harris'),
('STUDENT14', 'Charlotte Clark'),
('STUDENT15', 'Benjamin Lewis'),
('STUDENT16', 'Amelia Robinson'),
('STUDENT17', 'Matthew Walker'),
('STUDENT18', 'Harper Young'),
('STUDENT19', 'David Hall'),
('STUDENT20', 'Avery King'),
('STUDENT21', 'Joseph Wright'),
('STUDENT22', 'Ella Scott'),
('STUDENT23', 'Samuel Green'),
('STUDENT24', 'Abigail Adams'),
('STUDENT25', 'Henry Baker'),
('STUDENT26', 'Lily Nelson'),
('STUDENT27', 'Christopher Carter'),
('STUDENT28', 'Aria Mitchell'),
('STUDENT29', 'Andrew Perez'),
('STUDENT30', 'Evelyn Roberts'),
('STUDENT31', 'Joshua Turner'),
('STUDENT32', 'Grace Phillips'),
('STUDENT33', 'Ryan Campbell'),
('STUDENT34', 'Zoey Parker'),
('STUDENT35', 'Nicholas Evans'),
('STUDENT36', 'Penelope Edwards'),
('STUDENT37', 'Jacob Collins'),
('STUDENT38', 'Victoria Stewart'),
('STUDENT39', 'Logan Morris'),
('STUDENT40', 'Scarlett Rogers'),
('STUDENT41', 'Nathaniel Reed'),
('STUDENT42', 'Chloe Cook'),
('STUDENT43', 'Christian Morgan'),
('STUDENT44', 'Hannah Bell'),
('STUDENT45', 'Aaron Bailey'),
('STUDENT46', 'Zoe Cooper'),
('STUDENT47', 'Jonathan Richardson'),
('STUDENT48', 'Luna Cox'),
('STUDENT49', 'Gabriel Ward'),
('STUDENT50', 'Lillian Brooks'),
('STUDENT51', 'Adam Sanders'),
('STUDENT52', 'Stella Morris'),
('STUDENT53', 'Elijah Powell'),
('STUDENT54', 'Mila Foster'),
('STUDENT55', 'Isaac Russell'),
('STUDENT56', 'Nora Perry'),
('STUDENT57', 'Owen Long'),
('STUDENT58', 'Eleanor Bryant'),
('STUDENT59', 'Caleb Howard'),
('STUDENT60', 'Violet Henderson'),
('STUDENT61', 'Liam Fisher'),
('STUDENT62', 'Aurora Hayes'),
('STUDENT63', 'Aiden Price'),
('STUDENT64', 'Savannah Jenkins'),
('STUDENT65', 'Thomas Patterson'),
('STUDENT66', 'Layla Perkins'),
('STUDENT67', 'Evan Coleman'),
('STUDENT68', 'Bella Simmons'),
('STUDENT69', 'Isaiah Foster'),
('STUDENT70', 'Lucy Perry'),
('STUDENT71', 'Sebastian Butler'),
('STUDENT72', 'Ellie Gonzales'),
('STUDENT73', 'Jack Ross'),
('STUDENT74', 'Hazel Reed'),
('STUDENT75', 'Julian Powell'),
('STUDENT76', 'Audrey Sullivan'),
('STUDENT77', 'Levi Wood'),
('STUDENT78', 'Paisley Rogers'),
('STUDENT79', 'Anthony Collins'),
('STUDENT80', 'Aubrey Griffin'),
('STUDENT81', 'Brandon Lopez'),
('STUDENT82', 'Madison Richardson'),
('STUDENT83', 'Mason Carter'),
('STUDENT84', 'Ariana Sanders'),
('STUDENT85', 'Cameron Nelson'),
('STUDENT86', 'Lydia Russell'),
('STUDENT87', 'Tyler Cooper'),
('STUDENT88', 'Alyssa Diaz'),
('STUDENT89', 'Wyatt Clark'),
('STUDENT90', 'Isla Edwards'),
('STUDENT91', 'Dylan Richardson'),
('STUDENT92', 'Riley Watson'),
('STUDENT93', 'Colton Phillips'),
('STUDENT94', 'Maya Barnes'),
('STUDENT95', 'Blake Murphy'),
('STUDENT96', 'Melanie King'),
('STUDENT97', 'Carson Rivera'),
('STUDENT98', 'Jade Bell'),
('STUDENT99', 'Brody Murphy'),
('STUDENT100', 'Naomi Reyes'),
('STUDENT101', 'Asher Cox'),
('STUDENT102', 'Elena Gonzalez'),
('STUDENT103', 'Hunter Brooks'),
('STUDENT104', 'Ruby Wood'),
('STUDENT105', 'Jason Price'),
('STUDENT106', 'Anna Jenkins'),
('STUDENT107', 'Chase Rogers'),
('STUDENT108', 'Brooklyn Hayes'),
('STUDENT109', 'Austin Perry'),
('STUDENT110', 'Molly Henderson'),
('STUDENT111', 'Jordan Coleman'),
('STUDENT112', 'Piper Perry'),
('STUDENT113', 'Xavier Simmons'),
('STUDENT114', 'Eva Butler'),
('STUDENT115', 'Nolan Reed'),
('STUDENT116', 'Sophie Powell'),
('STUDENT117', 'Parker Foster'),
('STUDENT118', 'Willow Price'),
('STUDENT119', 'Connor Carter'),
('STUDENT120', 'Genesis Baker'),
('STUDENT121', 'Miles Green'),
('STUDENT122', 'Sadie Adams'),
('STUDENT123', 'Lincoln Ward'),
('STUDENT124', 'Allison White'),
('STUDENT125', 'Eli Mitchell'),
('STUDENT126', 'Madeline Torres'),
('STUDENT127', 'Jeremiah Sanders'),
('STUDENT128', 'Clara Bailey'),
('STUDENT129', 'Adam Morris'),
('STUDENT130', 'Ivy Long'),
('STUDENT131', 'Jason Perry'),
('STUDENT132', 'Lilly Henderson'),
('STUDENT133', 'Kevin Foster'),
('STUDENT134', 'Eliza Butler'),
('STUDENT135', 'Brian Nelson'),
('STUDENT136', 'Annabelle Jenkins'),
('STUDENT137', 'Aidan Richardson'),
('STUDENT138', 'Ruby Cooper'),
('STUDENT139', 'Maddox Powell'),
('STUDENT140', 'Arianna Diaz'),
('STUDENT141', 'Zachary Perry'),
('STUDENT142', 'Mackenzie Bell'),
('STUDENT143', 'Wesley Gonzales'),
('STUDENT144', 'Kinsley Price'),
('STUDENT145', 'Tristan King');


-- Join student_name & students and display std_name ORDER Alphabatically.
Select B.std_name, C.sex 
FROM students AS A
JOIN student_name AS B ON A.id = B.id
JOIN sex AS C ON A.sex = C.id 
ORDER BY B.std_name ASC;