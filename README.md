# Database Management Coursework 1 

The Database Management Coursework 1 accounts for 20% of the module grade. You will 
be required to create an Entity Relationship Diagram in the Chen notation, create a 
database with data and then answer several questions by writing SQL code.

## Part I: Entity-Relationship Diagram (30 marks) 

Consider modelling certain features of an online shop which allows users to purchase items 
and rate them. The online shop has several users, each of whom has an identifier and a 
name specified. The shop sells many items, each with an identifier, a description, a single 
category under which it is classified, and a current price. Users can buy items from the shop, 
with the price paid recorded for each purchase (the current price of an item can vary from 
one day to the next). Users can also rate items sold by the shop. They do this by specifying 
a rating, an integer between 1 and 5, for an item. You should assume (initially) that users are 
allowed to rate items that they have not bought. 

Draw an entity-relationship diagram (ERD) that models the above description of an online 
shop. Make sure that you specify all details in the diagram, including cardinality (mapping) 
constraints, participation constraints, keys. etc. Please use the Chen notation used in 
lectures to draw the ERD. Submit a file containing your diagram. You do not necessarily 
have to use a tool or sophisticated drawing program to produce the diagram if it is neat and 
legible. 

How would you change your diagram to reflect the situation in which a user can only rate 
items that they have bought? 

## Part II: SQL Queries (50 marks in total) 

### a) Database table creation (30 marks) 

The following tables and associated attributes model a shop as described above, where 
`price` in table `item` is the current price of the item, `price` in table `buys` is the price the user 
paid for the item, and `user` and `item` in the tables `buys` and `rates` correspond to the 
identifiers of users and items, respectively. 

- user(id, name) 
- item(id, description, category, price) 
- buys(user, item, price) 
- rates(user, item, rating) 

First create these tables using MySQL. You can create the tables in the database you used 
for the lab sessions (you do not have permission to create a new database using the 
Department's MySQL server), or wherever you wish if you are running your own copy of 
MySQL. Please use exactly the table and attribute names specified above. You should 
ensure that you choose appropriate primary and foreign keys, along with any other 
constraints you feel are necessary. For this part, you can assume that no user buys or rates 
the same item more than once. You do not need to assume that users can only rate items 
they have bought. Note that to specify foreign keys, you will need to specify the 'InnoDB' 
engine when creating the tables. The 'create table' interface in the MySQL Workbench 
allows you to specify foreign keys using a tab near the bottom of the interface. 

You have been supplied with a MySQL script (populate.sql) to insert sample data into your 
database. 

### b) Queries (20 marks)

You are required to create SQL queries as listed below. All queries should be fully tested, 
elegantly written showing the correct response when using the data from the four sample 
files above. 

| No. | Question                                                                                                                                          | Score |
|-----|---------------------------------------------------------------------------------------------------------------------------------------------------|-------|
| 1   | Find the descriptions of items in the book category which cost less than £5.00 along with the book price.                                         | 1     |
| 2   | Find the descriptions of items bought by the user with name "Smith".                                                                              | 2     |
| 3   | Find the names of users who have bought items with a total value of more than 1000.                                                               | 2     |
| 4   | For each category, find the average current price of items in that category.                                                                      | 1     |
| 5   | Find the descriptions of items which have not been rated by any user.                                                                             | 1     |
| 6   | Find the descriptions of items which have been bought by the most users.                                                                          | 3     |
| 7   | List the category and current price for all items costing more than 100, ordered by ascending category and, within category, by descending price. | 2     |
| 8   | Find the name(s) of users and description(s) of item(s) such that the user bought the item for a price greater than the current price.            | 2     |
| 9   | For each user, find the descriptions of items they have bought but not rated.                                                                     | 3     |
| 10  | For each item which has at least 2 ratings, find the average rating for the item.                                                                 | 3     |

## Part III - General (20 marks) 
1. Using the database tables you created in Part II of this coursework, what are the 
possible primary key attributes of the rates table? (3 points) 
Name 
2. You have been provided with the following data in the Employee table of a database 
schema:

| EmployeeID | Name         | Email                | Phone          |
|------------|--------------|----------------------|----------------|
| 1          | Alice Davies | alcice@mycompany.com | 020 8777 1234  |
| 2          | Bob Edgar    | bob@mycompany.com    | 020 8777 5678  |
| 3          | Carol Singer | carol@mycompany.com  | 020 8777 9876  |
| 4          | Dan Jones    | dan@mycompany.com    | 020 8777 6543  |

Answer the following questions: 
  - What are the possible Superkeys for this example providing your assumptions and explanation? (4 points) 
  - What are the possible Candidate Keys for this example providing your assumptions and explanation? (2 points) 

3) What does the following query prove or disprove if it is assumed each employee tuplet in the Employee table has a one-to-one relationship with `EmployeeDetails` table?  Marks will be given your reasoning and explanation. (2 points)

```sql
SELECT  
    e.EmployeeID,  
    e.Name  
FROM Employee e  
WHERE EXISTS (  
        SELECT 1  
        FROM EmployeeDetails ed  
        WHERE ed.EmployeeID = e.EmployeeID );
```

4) Note: This will require some research and a detailed answer. When comparing the value of an attribute, say Title, to a NULL value in SQL, one is required to use the syntax `Title IS NULL` or `Title IS NOT NULL`  (rather than using `=` or  `!=`). Explain why this special syntax is required. (6 points)

5) Give a short explanation of what is meant by each of the following terms:
    a. First Normal Form (1 point) 
    b. Weak Entity Type (1 point) 
    c. Total Participation (1 point) 
