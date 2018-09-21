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

  # Notice that the Keys are integers
  @recipes = {
    1 => 'Avocado sushi',
    2 => 'BBQ Ribs',
    3 => 'Gluten-Free Cookies'
  }

  erb :recipes
end

get '/recipes/:id' do
  id = params[:id]

  @recipes = {
    1 => 'Avocado sushi',
    2 => 'BBQ Ribs',
    3 => 'Gluten-Free Cookies'
  }

  @name = @recipes[id.to_i]

  erb :recipe
end

# get '/recipes/1' do
#   erb :recipe_1
# end
#
# get '/recipes/2' do
#   erb :recipe_2
# end
#
# get '/recipes/3' do
#   erb :recipe_3
# end
