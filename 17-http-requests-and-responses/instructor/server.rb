require 'sinatra'

# HTTP VERB : GET, POST, PATCH, DELETE
# PATH : 'local' part of the URL
# ROUTE : verb + path

get '/' do
  redirect to('/hello')
end

get '/hello' do
  @current_time = Time.now

  @todo_list = [
    'Water the plants',
    'Feed the cat',
    'Call the girlfriend',
    'Cook the dinner',
    'Blah blah blah'
  ]

  # Must be the last line
  #send_file 'views/hello.html'
  erb :hello
end

get '/goodbye' do
  'Goodbye!!!!'
end
