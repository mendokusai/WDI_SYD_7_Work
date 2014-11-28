require "sinatra"
require "sinatra/reloader"
require 'pry'
require 'pg'

def run_sql(sql)
  con = PG.connect(dbname: 'new_blog', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end

get '/' do
	@message = "hello"
	@posts = run_sql("
		SELECT posts.id, posts.title, posts.post, posts.author_id, posts.date, authors.first_name AS author_first, authors.last_name AS author_last, authors.website AS author_website, authors.twitter AS author_twitter FROM posts
		LEFT OUTER JOIN authors ON posts.author_id = authors.id;")
	erb :home
end

get '/posts/:post_id' do
	@posts = run_sql("
		SELECT * FROM posts
		WHERE id=#{params[:post_id]};")
	erb :posts
end