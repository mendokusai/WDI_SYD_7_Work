Databases pt 2

Try not to mix languages.

Fluffy Project Management

Rails uses Active Record

#be very careful about removing anything, especially categories...

#dangerous: drop table !kills the table and data!

(
id serial4 primary key,
title varchar(255) not null,
content text not null,
author varchar(5) not null,
author_website varchar(255) not null
)

ALTER TABLE posts ADD COLUMN category varchar(255) not null;

create table authors
(
id serial4 primary key,
name varchar(50) not null,
website varchar(255) not nul
);

alter table posts add column author_id int4 references authors(id);

select author, author_website from posts;

@posts.each do |post|
insert into authors (name, website) values('!{[post["author"]}', '#{post_______});
update posts set author_id=x where id=#{post["id"]}
end

Alter table posts drop column authorl
alter table posts drop column author_website;


createdb anything

CREATE TABLE random1

(
id SERIAL4 PRIMARY KEY,
name VARCHAR(50) NOT NULL,
post VARCHAR(255) NOT NULL,
age INT NOT NULL
)

CREATE TABLE random2

(
id SERIAL4 PRIMARY KEY,
name VARCHAR(50) NOT NULL
)

#list columns and datatypes

\d+ {table}

#aliasing a query with a name
SELECT id AS the_awesome_id_of_doom FROM tasks;

SELECT COUNT(id) AS number_of_tasks FROM tasks;
number_of_tasks #=> returns query.

SELECT MAX(worker_id) AS biggest_order FROM tasks;
biggest_order #=> 4

SUM COUNT AVG - do some calcing in the db instead of in ruby
* * postgresql functions * * {there are tons == http://www.postgresql.org/docs/current/static/functions.html}

migration -> define in ruby how database should be set up
	-add workers
	-add tasks
	(removing things is less common)
	setup_db.rb [from last night] is a good example

create seed data

#routes '/routes' should be plural

redirects are by default a get request, they are a new request once the post command has been executed.

get -> form -> submit ->post[method]->redirect[-> new get]

post is basically just a method to process data.
update(put patch)

get request sends params to the url, post sends them to the post request body.

put updates details

the ordering matters

#if this (V) case, new can work as /:id and break it, so /:id should go underneath new.

			get '/workers/:id'
			end

			get '/workers/new'
			end

should be
 
			get '/workers/new'
			end

			get '/workers/:id'
			end
#

homework to add in author as seperate table to blog
fresh database

setup db file

in a multi-table join request, be very explicit with the fields you're requestiong, so:

#SQL JOIN
SELECT tasks.title, tasks.due_at, tasks.id...workers.last_name AS worker_last_name

#if it comes from a second table, use an AS to rename it for the sake of the query.

Table(s) are the actual data

Results-set are the search-instance of a query
 ON tasks.worker_id = workers.id = connects the detail associate from tasks







