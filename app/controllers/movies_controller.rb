class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render template: "movies/index"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render template: "movies/show"
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      director: params[:director],
      main_cast: params[:main_cast],
      genre: params[:genre],
      runtime: params[:runtime],
      synopsis: params[:synopsis]
    )
    render template: "movies/show"
  end

  def update 
    @movie = Movie.find_by(id: params[:id])
    @movie.director = params[:director] || @movie.director
    @movie.main_cast = params[:main_cast] || @movie.main_cast
    @movie.genre = params[:genre] || @movie.genre
    @movie.runtime = params[:runtime] || @movie.runtime
    @movie.synopsis = params[:synopsis] || @movie.synopsis
    @movie.save
    render template: "movies/show"
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Movie Deleted"}
  end
end
