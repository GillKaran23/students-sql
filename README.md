# Students Management System

## Overview

The Students Management System consists of a total of **26 tables**. The main table, **Students**, serves as the core of the system, linking to various other tables.

### Students Table (Main Table)

- **Total Rows:** 145
- **Total Columns:** 30
- **Description:** The **Students** table contains IDs that reference data in the other 25 tables. This data currently appears as unreadable IDs, making it necessary to transform these IDs into meaningful information.

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

## Other 25 Tables

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
