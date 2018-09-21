require 'sinatra'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  @title = 'About Us'
  erb :about
end

get '/contact' do
  @title = 'Contact Us'
  erb :contact
end

get '/legal' do
  @title = 'Fine Print'
  erb :legal
end

get '/recipes' do
  @title = 'Recipes'
  erb :recipes
end
