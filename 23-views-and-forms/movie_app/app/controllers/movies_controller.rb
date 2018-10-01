class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render :index
  end

  def new
    @new_movie = Movie.new
    # @movie.title = "The Big Lebowski"
  end

  def create
    movie = Movie.new
    movie.title = params[:movie][:title]
    movie.genre = params[:movie][:genre]
    movie.release_year = params[:movie][:release_year]
    movie.runtime = params[:movie][:runtime]

    movie.save
    redirect_to(movies_path) # just /movies
  end

  def edit
    @edit_movie = Movie.find(params[:id])
  end

end
