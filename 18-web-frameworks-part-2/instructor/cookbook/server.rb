require 'sinatra'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/legal' do
  erb :legal
end

get '/recipes' do
  erb :recipes
end
