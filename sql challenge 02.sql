/*SQL Question 1: PRIMARY KEY & FOREIGN KEY
Scenario:
 You are creating a database for an online bookstore.
Task:
 Define a primary key for Books(BookID) and a foreign key in Orders(BookID) referencing Books.
Expected Output:
 Constraints are applied successfully.*/
create database if not exists online_bookstore;
use online_bookstore;
create table Books(
	   Book_id int primary key,
       Book_name varchar(70),
       Published_date date);
create table Orders(
         Order_id int primary key,
         Book_id int,
		 Quantity int,
         Ordered_date date,
         Foreign key (Book_id)references Books(Book_id));
         

/*SQL Question 2: UNIQUE Constraint
Scenario:
 Each book must have a unique ISBN.
Task:
 Add a UNIQUE constraint to the ISBN column in Books.
Expected Output:
 ISBN values are enforced as unique.*/
 Alter table Books add column ISBN int unique not null;


/*SQL Question 3: DELETE vs TRUNCATE
Scenario:
 The store wants to clear test orders but sometimes preserve structure.
Task:
 Demonstrate DELETE with WHERE clause and TRUNCATE for Orders table.
Expected Output:
 DELETE removes selected rows; TRUNCATE clears all rows quickly. */
Set sql_safe_updates=0;
Delete from Orders
where Quantity=0;
truncate table Orders;

