# Students Management System

## Overview

The Students Management System consists of a total of **27 tables**. The main table, **Students**, serves as the core of the system, linking to various other tables.

### Students Table (Main Table)

- **Total Rows:** 145
- **Total Columns:** 30
- **Description:** The **Students** table contains IDs that reference data in the other 26 tables. This data currently appears as unreadable IDs, making it necessary to transform these IDs into meaningful information.

### Students Columns

- id
- age
- sex
- graduatedhighschooltype
- scholarshiptype
- additionalwork
- anotheractivity
- partner
- salary
- transportation
- accommodationtype
- motherseducation
- fatherseducation
- siblings
- parentalstatus
- mothersoccupation
- fathersoccupation
- weeklystudyhours
- seminarsattendance
- impactofprojects
- attendance
- midtermexams1
- midtermexams2
- takingnotes
- listeningclasses
- flipclassroom
- lastsemCGPA
- expectedCGPA
- course_id
- grade

## Other 26 Tables

- **age**
- **sex**
- **graduatedhighschooltype**
- **scholarshiptype**
- **additionalwork**
- **anotheractivity**
- **partner**
- **salary**
- **transportation**
- **accommodationtype**
- **education**
- **siblings**
- **parentalstatus**
- **occupation**
- **weeklystudyhours**
- **seminarsattendance**
- **impactofprojects**
- **attendance**
- **midtermexams1**
- **midtermexams2**
- **notes_classes**
- **flipclassroom**
- **cgpa**
- **courses**
- **grade**
- **student_name**

## Tasks

### 1. **Readable Data**

- Transform the unreadable IDs in the **Students** table into human-readable information by joining with the respective tables.
- Ensure that all references in the **Students** table are clear and easy to interpret.

### 2. **Data Counting**

- Perform data counting operations to summarize and analyze key information across the **Students** table and the related tables.
- Provide aggregated counts, such as the number of students per department, course, etc.

### 3. **Data Exploration and Summarization**

- Count Total **Students**.
- Calculate the **Percentage** of **Students** receiving each type of scholarship.
- Calculate the **Count** of **Male Students** of **CSE** who has **Full Scholarship** having **Partner**.
- Find the **Course** which has **Most and Least Students** with Count.

### 4. **Filtering and Conditional Queries**

- List all students who have a **lastsemCGPA** of **3.00-3.49**.
- Find students who commute by **Bus** and have an **expextedCGPA <2.00**.
- Select students who are **married** and have at least **2 siblings**.

### 5. **Aggregation Queries**

- Calculate the average **lastsemCGPA** for each **graduatedhighschooltype**.
- Determine the most common **mothersoccupation** and **fathersoccupation**.
- Find the total number of students attending seminars **regularly**.

### 6. **Joining Tables**

- Create a separate **courses** table and join it with the **students** table on **course_id** to show course names and grades.
- Join table **parentalstatus** display only students who have **parentalstatus divorced**.

### 7. **Subqueries**

- Use a subquery to find the students who have the Above 3.49 **lastsemCGPA** in each **graduatedhighschooltype**.
- Use a subquery to list students who have the same **expextedCGPA** as their **lastsemCGPA**.

### 8. **Creating Views**

- Create a view showing students with a **lastsemCGPA** and **expextedCGPA** both are **2.50-2.99**.
- Create a view displaying all students who have **additional work** and attend **seminars regularly**.
- Delete Both the **VIEWS**.

### 9. **Complex Queries**

- Write a query to find students who **do not take notes** but have an **attendance** record of **Always**.
- List all students who belong to the **age** group **22-25**, have a partner, and whose **parentalstatus** is **Died - One of Them Or Both**.

### 10. **Create & Display Table**

- Create Table **student_name** which has two columns **id**, **std_name**.
- Insert the values in **student_name** according to the **id** in **students** table.
- Join **student_name** & **students** and display **std_name**.

### 11. **Count Tables and Columns**

- Show all the **Databases**.
- Count Total Tables in **students** Database.
- Display Table with the **Columns count** of **students** Database.
