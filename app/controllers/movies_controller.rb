class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render template: "movies/index"
  end
end
