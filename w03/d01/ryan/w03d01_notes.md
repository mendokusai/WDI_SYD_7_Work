SQL

structured Query Language

We'll use postgreSQL others: SQLite, MySQL, MSSQL, Oracle



Capacity isn't an issue until after 2Billion.

Tables in tables in tables.

col 1, specifiy data, col 2 deets

__________________
| 			People 		|
-------------------
| first.name |	VARCHAR(50)	|
| last.name  |	VARCHAR(50)	|
| DOB 			 |	DATE				|
| Children	 |	SMALLINT		|
| Married    |	BOOLEAN			|
| Bio				 |	TEXT				|
| ID 				 |	SERIAL			|
___________________

Addresses
street_one Varchar(100)
street_two: VARCHAR
city: VARCHAR
state: VARCHAR
postcode: VARCHAR
country: VARCHAR
person:id |   INT    |  > special id via INT
id: SERIAL


creating a person and addresss
______

1. user fills in form with details & addrsss
2. they submit
3. those detials are sent to server
4. server takes details
5. details are stored in people table
	| ID | F_name | L_name  | DOB
	| 10 | Jack		| Hamblin | dob |
6. get back person (id= 10)
7. store the address
address.person_id = person.id
	|ID | street_1 		|street_2 | person_ID
	|	5	| fake street | unit 1  | 10 			 |
8. get back record (ID=5)
9. Have the person record and the address
10. Person.address => Find address where peroson_id = 10


Primary Key 
___________

* ID Column *

table will have unique ID
foreign key

singular_id

you can reference many things from one point, via person_id

Numbers
_______

INT/integer: -2147483648 to +2147483647 (4-bytes)
smallint: -32768 to +32768 (2 bytes)
bigint: -9223372036854775808 to +9223372036854775808 (8 bytes)
Double: 15 precision(8bytes) * type FLOAT8
Real: 6 precision (4bytes) * type FLOAT4
Boolean: True /False *1/0* (1bytes)
Serial: is an INT with auto incremented

TEXTs
______
VARCHAR(n) n specifies how many characters can be stored
	usual VARCHAR(255), varchar(20) 1char = 1byte, unicode 1 = 2bytes

TEXT -used for large amount of text data (i.e. blog posts)

DAT&TIME
________
TIMESTAMP: A point in time, optional specify timezone
DATE: date-only
TIME: time-only
	example:
		Time
		Time.new
		Time.new.to_i


^^^Common used terms ^^^


SQL is written in allcaps.

CREAT TABLE students 
(
	id SERIAL4 PRIMARY KEY,
	first VARCHAR(25) NOT NULL,
	last VARCHAR(25) NOT NULL,
	dob DATE,
	gpa FLOAT8 *using atar because 'straya'
)

## students
| id | first_name | last_name  | dob 	 | course_id |
| 1  | name       |  name      | date	 | 1

##courses

| id | name |
| 1  | WDI  |


select * (all)
select id FROM students

ex:
SELECT * FROM students WHERE first = "Wolf";
 #returns entry

 SELECT * FROM students WHERE dob IN ('01/01/1960')

 SELECT * FROM students where first NOT "Wolf":


 sqlite> INSERT INTO courses (name) VALUES ("WDI"), ("UXDI"), ("FEWD");
sqlite> SELECT * FROM courses;
|WDI|
|UXDI|
|FEWD|

when updating, be very sure to include "WHERE" otherwise all students get the attribute added.

ex 
* UPDATE students SET course_id=1 WHERE first_name="JACK";
* DELETE FROM students WHERE id=1;

CREATE TABLE students 
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
dob DATE,
atar FLOAT8
);

CREATE TABLE courses
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(50) UNIQUE NOT NULL,
student_id INT4 REFERENCES students(id)	
);

ALTER TABLE students ADD COLUMN course_id INTEGER REFERENCES courses(id);

INSERT INTO students (first_name, last_name, dob) VALUES (“Jack”, “Watson-Hamblin”, “09/16/1993”);
INSERT INTO students (first_name, last_name, dob) VALUES (“Jack”, “Watson-Hamblin”, “09/16/1993”), (“Wolf”, “Jeffress”, “01/01/1970”), ;

SELECT * FROM students;
SELECT id, first_name FROM students;
SELECT * FROM students WHERE first_name=“Wolf”;
SELECT * FROM students WHERE first_name IS NOT “Wolf”;
SELECT * FROM students WHERE first_name LIKE “%a%”;

INSERT INTO courses (name) VALUES (“WDI”), (“UXDI”), (“FEWD”);

SELECT * FROM courses;	
SELECT * FROM students WHERE id=1

# Important actions + bonus terms associated.
SELECT fields FROM
INSERT table fields VALUES
UPDATE set WHERE
DELETE WHERE

Schema - pertaining to the tables

#main commands for working with schema
CREATE
ALTER
DROP


people
id |INT |Prim key | Autoincrement
first_name |
Last_name |
dob | 

address
street 1
street 2
city
state
post
country
person id


#real shit to learn: write it out in sublime and then c&p into sql.
INSERT INTO people(first_name, last_name, dob) VALUES ("Ryan", "Pauley", "11/25/1980"), ("Adolf", "Hitler", "04/20/1932"), ("Fredrick Fucking", "Chopin", "02/20/1730");

CRUD (create, read, update, delete)

JOIN

SELECT students.first_name, students.last_name, students.dob, course.name FROM studnets INNER JOIN courses ON students.course_id = courses.id;

#pulls out deets you want but not what you don't

innerjoin - produces only records that mach table ids

Full outer join - gets details from all tables.

http://blog.codinghorror.com/a-visual-explanation-of-sql-joins/


#postgres

psql --list - show dbs

psql --help - show stuff

psql -d scool

school=# Create TABLE students
school-# (
school(# id SERIAL4 PRIMARY KEY,
school(# first_name VARCHAR(50) NOT NULL,
sc)))


require 'pg'
con = PG.connect(dbname: 'school', host: 'localhost')
con.exec('Select * From students;')
students = con.exec('SELECT * FROM students;')
students.each do |row|
	puts row['first_name']
	end

#an array of hashes#
#execute commands in pg from ruby

this allows us to access individual selections - view individual data (on a website) from database data.

RUBY(sinatra) === Postgres(db)

students(pg) -> Ruby Display


tonight we're building a blog
bonus, get update and/or delete to work.


createdb my_blog

CREATE TABLE posts
(
id SERIAL4 PRIMARY KEY,
title VARCHAR(255) NOT NULL,
content TEXTNOT NULL,
author VARCHAR(50) NOT NULL,
author_website VARCHAR(255) NOT NULL
);



INSERT INTO posts(title, content, author, author_website) VALUES ('Hello World!', 'This is the first post on my blog!', 'Ryan', 'http://www.ryanpauley.com');

