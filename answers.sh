### Basic Queries

# Get all the names of students in the database
"SELECT Name FROM students;"

# Get all the data of students above 30 years old
"SELECT * FROM students WHERE Age > 30;"

# Get the names of the females who are 30 years old
"SELECT Name FROM students WHERE Gender = 'Female' AND Age = 30;"

# Get the number of Points of **Alex**
"SELECT Points FROM students WHERE Name = 'Alex';"

# Add yourself as a new student (your name, your age...)
"INSERT INTO students VALUES (NULL, 'Jinane', 29, 'Female', 50);"

#  Increase the points of **Basma** because she solved a new exercise
"UPDATE students SET Points = Points + 20 WHERE Name = 'Basma';"

# Decrease the points of **Alex** because he’s late today
"UPDATE students SET Points = Points - 25 WHERE Name = 'Alex';"

############################################# 

### Creating Table

"
    CREATE TABLE graduates (
        ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        Name TEXT NOT NULL,
        Age INTEGER,
        Gender TEXT,
        Points INTEGER,
        Graduation TEXT
    );
"
#Copy Layal's data from **students** to **graduates**
"INSERT INTO graduates (Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM students WHERE Name = 'Layal';"

#Add the graduation date previously mentioned to Layal's record in **graduates**
" UPDATE graduates SET Graduation = '2018-09-08' WHERE Name = 'Layal';"

#Remove Layal's record from **students**
"DELETE FROM students WHERE Name = 'Layal';"

 ############################################# 

 
### Joins

 #Produce a table that contains, for each employee, his/her name, company name, and company date.
"SELECT employees.Name AS Employee, companies.Name AS Company, companies.Date AS Date
FROM employees
JOIN companies ON employees.Company = companies.name;"

#Find the name of **employees** that work in companies made before 2000.
"
SELECT employees.Name
FROM employees
JOIN companies ON employees.Company = companies.Name
WHERE companies.Date < 2000;
"

#Find the name of company that has a graphic designer.
"
SELECT companies.Name
FROM companies
JOIN employees ON companies.Name = employees.Company
WHERE employees.Role = 'Graphic Designer';
"
 ############################################# 

### Count & Filter

#the person with the highest number of points in **students**
"
SELECT Name
FROM students
WHERE Points = (SELECT MAX(Points) FROM students);
"
# Find the average of points in **students**
"
SELECT AVG(Points) AS AveragePoints
FROM students;
"

#Find the number of students that have 500 points
"
SELECT COUNT(*) AS NumberOfStudentsHave500pt
FROM students
WHERE Points = 500;

"

#Find the names of students that contains 's'
"
SELECT Name
FROM students
WHERE Name LIKE '%s%';
"

#Find all students based on the decreasing order of their points
"
SELECT *
FROM students
ORDER BY Points DESC;
"
 