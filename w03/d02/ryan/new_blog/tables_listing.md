
@tasks = run_sql("
  SELECT tasks.title, tasks.due_at, tasks.id,
  workers.first_name AS worker_first_name,
  workers.last_name AS worker_last_name
  FROM tasks
  LEFT OUTER JOIN workers
  ON tasks.worker_id = workers.id;
")
#posts

id
title
post
author_id
date

#authors

id
first_name
last_name
bio
website
twitter

goals:
1 see all blog post titles 
2 	click on them to get FULL post

3 Add a blog post


