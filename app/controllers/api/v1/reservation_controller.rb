class Api::V1::ReservationController < ApplicationController
  def create
    puts "2222222222222222222222222"
    puts params

    render json: {movies: "all fine"}.to_json, status: 200
  end
end
