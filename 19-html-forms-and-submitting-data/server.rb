require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  # "GET request: #{params}"
  erb :index
end

post '/films' do
  # "POST request: #{params}"
  @film = Film.new(
    title: params['title'],
    description: params['description'],
    country: params['country'],
    rating: params['rating']
  )

  @film.save

  redirect to('/films')
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  "DELETE request: #{params}"
end
