require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql_string)
  connection = PG.connect(dbname: "my_blog", host: "localhost")
  result = connection.exec(sql_string)
  connection.close
  # binding.pry
  return result
end

get '/' do
  @blog_posts = run_sql("SELECT * FROM posts;")
  # binding.pry
  erb :home
end

get '/posts/new' do
  erb :new_blog_form
end

get '/posts/:id' do
  blog_id = params[:id]
  @single_post = run_sql("SELECT * FROM posts WHERE id=#{blog_id};").first
  
  delete_post = params[:deleter]
  if delete_post == "delete"
    @post_del = run_sql("DELETE * FROM posts WHERE id=#{blog_id};").first
  end
  # what I want to have happen is to click button, value comes out, IF value is true, delete post?? 
  
  erb :blog_posts
end

post '/blog_posts' do
  run_sql("
    INSERT INTO posts
    (title, author, author_website, content)
    VALUES
    (
      '#{params["title"]}',
      '#{params["author"]}',
      '#{params["author_website"]}',
      '#{params["content"]}'
    )
  ")

  redirect "/"
end

