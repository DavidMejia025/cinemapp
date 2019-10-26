class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    
    render json: {movies: @movies}.to_json, status: 200 
  end

  def create
    puts movie_params
    @movie = Movie.create!(name: movie_params[:name],
      description: movie_params[:description], 
      image_url: movie_params[:image_url]
    )

    movie_params[:dates].split.each do|date|
      @movie.schedules.create(date: Date.parse("#{date}"))
    end
    
    p @movie.schedules.count

    render json: {movies: "all fine"}.to_json, status: 200
  end

  def movie_params
    params.require(:movie).permit(:name, :description, :image_url,:dates)
  end
end