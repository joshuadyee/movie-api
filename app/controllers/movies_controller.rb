class MoviesController < ApplicationController
  def index
    render json: {hi: "hello"}
  end
end
