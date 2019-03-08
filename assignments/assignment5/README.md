### Assignment 5 (due March 19)
1. Read the [W3C SQL Tutorial](https://www.w3schools.com/sql/default.asp).
2. Take an easy [SQL Quiz](https://www.w3schools.com/quiztest/quiztest.asp?qtest=SQL).
3. Read a tutorial on [SQL Joins](http://www.sql-join.com/).
4. Read a tutorial on [SQL Subquery](http://www.sqltutorial.org/sql-subquery/). 
5. Take Post-class Quiz 4 on Blackboard. Refer to the [schema of the employees database](https://dev.mysql.com/doc/employee/en/sakila-structure.html) when you answer Questions 6 to 15.
6. Retrieve data from the MySQL sample database sakila to answer the questions below. For each question, store the SQL query you used and the answer in a text file (that can be edited in Sublime Text 3). Refer to the [table structure](https://dev.mysql.com/doc/sakila/en/sakila-structure-tables.html) when you answer the questions. 
  1. What are the names of all the languages in the database? Sort the languages alphabetically. 
  2. Return the full names (first and last) of all actors with "BER" in their last name. Sort the returned names by their first name. (Hint: use the CONCAT() function to add two or more strings together.)
  3. How many last names are not repeated in the actor table?
  4. How many films involve a "Crocodile" and a "Shark"?
  5. Return the full names of the actors who played in a film involving a "Crocodile" and a "Shark", along with the release year of the movie, sorted by the actors' last names.
  6. Find all the film categories in which there are between 40 and 60 films. Return the names of these categories and the number of films in each category, sorted in descending order of the number of films. 
  7. Return the full names of all the actors whose first name is the same as the first name of the actor with ID 24. 
  8. Return the full name of the actor who has appeared in the most films. (Hint: use the ORDER BY and LIMIT clauses.)
  9. Return the film categories with an average movie length longer than the average length of all movies in the sakila database. 
  10. Return the total sales of each store. 
7. Upload the text file you created above to a GitHub repository. Email the instructor the address of the repository and the filename. 