class Api::V1::MoviesController < ApplicationController
  def index
    get_movies

    render json: {movies: @movies}.to_json, status: 200
  end

  def create
    @movie = Movie.create!(name: movie_params[:name],
      description: movie_params[:description],
      image_url:   movie_params[:image_url],
      start_day:   movie_params[:start_day],
      end_day:     movie_params[:end_day]
    )

    render :ok
  end

  def movie_params
    params.require(:movie).permit(:name, :description, :image_url,:dates, :start_day, :end_day)
  end

  def get_movies
    dates = filter_by_dates

    @movies = Movie.all.where(
      "start_day >= ? and end_day <= ?",dates[:start_day], dates[:end_day]
    ).order("start_day DESC")
  end
  
  def movie
    @movie ||= Movie.find(params[:id])
  end
end
