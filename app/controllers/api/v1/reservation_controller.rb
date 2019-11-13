class Api::V1::ReservationController < ApplicationController
  def create
    puts params
    movie = Movie.find(params[:id])

    begin
      movie.reservations.create!(
        visitor_id:   reservation_params[:visitor_id],
        name:         reservation_params[:name],
        email:        reservation_params[:email],
        mobile_phone: reservation_params[:mobile_phone]
      )

      render json: {movies: "all fine"}.to_json, status: 200
    rescue => e
      render json: {movies: e.message}.to_json, status: 200
    end
  end

  def reservation_params
    params.require(:reservation).permit(:visitor_id, :email, :name,:mobile_phone, :day)
  end
end
