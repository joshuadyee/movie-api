class MoviesController < ApplicationController
  def index
    movie = Movie.last
    render json: {movie: movie}
  end
end
