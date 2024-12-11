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
"INSERT INTO students VALUES (NULL, 'Jinane', 29, 'Female', 50)"

#  Increase the points of **Basma** because she solved a new exercise
"UPDATE students SET Points = Points + 10 WHERE Name = 'Basma';"

# Decrease the points of **Alex** because he’s late today
"UPDATE students SET Points = Points - 5 WHERE Name = 'Alex';"
###################################################################################
