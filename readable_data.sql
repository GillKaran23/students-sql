SELECT 
    A.id, 
    B.age, 
    C.sex, 
    D.graduatedhighschooltype, 
    E.scholarshiptype, 
    F.additionalwork, 
    G.anotheractivity, 
    H.partner, 
    I.salary, 
    J.transportation, 
    K.accommodationtype, 
    L.education AS motherseducation, 
    M.education AS fatherseducation,
    N.siblings, 
    O.parentalstatus, 
    P.occupation AS mothersoccupation, 
    Q.occupation AS fathersoccupation, 
    R.weeklystudyhours, 
    S.seminarsattendance, 
    T.impactofprojects, 
    U.attendance, 
    V.midtermexams1, 
    W.midtermexams2, 
    X.notes_classes AS takingnotes, 
    Y.notes_classes AS listeningclasses, 
    Z.flipclassroom, 
    AA.cgpa AS lastsemCGPA, 
    AB.cgpa AS expectedCGPA, 
    AC.courses, 
    AD.grade
FROM students A
LEFT JOIN age B ON A.age = B.id 
LEFT JOIN sex C ON A.sex = C.id
LEFT JOIN graduatedhighschooltype D ON A.graduatedhighschooltype = D.id
LEFT JOIN scholarshiptype E ON A.scholarshiptype = E.id
LEFT JOIN additionalwork F ON A.additionalwork = F.id
LEFT JOIN anotheractivity G ON A.anotheractivity = G.id
LEFT JOIN partner H ON A.partner = H.id
LEFT JOIN salary I ON A.salary = I.id
LEFT JOIN transportation J ON A.transportation = J.id
LEFT JOIN accommodationtype K ON A.accommodationtype = K.id
LEFT JOIN education L ON A.motherseducation = L.id
LEFT JOIN education M ON A.fathserseducation = M.id
LEFT JOIN siblings N ON A.siblings = N.id
LEFT JOIN parentalstatus O ON A.parentalstatus = O.id
LEFT JOIN occupation P ON A.mothersoccupation = P.id
LEFT JOIN occupation Q ON A.fathersoccupation = Q.id
LEFT JOIN weeklystudyhours R ON A.weeklystudyhours = R.id
LEFT JOIN seminarsattendance S ON A.seminarsattendance = S.id
LEFT JOIN impactofprojects T ON A.impactofprojects = T.id
LEFT JOIN attendance U ON A.attendance = U.id
LEFT JOIN midtermexams1 V ON A.midtermexams1 = V.id
LEFT JOIN midtermexams2 W ON A.midtermexams2 = W.id
LEFT JOIN notes_classes X ON A.takingnotes = X.id
LEFT JOIN notes_classes Y ON A.listeningclasses = Y.id
LEFT JOIN flipclassroom Z ON A.flipclassroom = Z.id
LEFT JOIN cgpa AA ON A.lastsemCGPA = AA.id
LEFT JOIN cgpa AB ON A.expextedCGPA = AB.id
LEFT JOIN courses AC ON A.course_id = AC.id
LEFT JOIN grade AD ON A.grade = AD.id;
