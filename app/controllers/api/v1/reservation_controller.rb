class Api::V1::ReservationController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get_all
    @reservations = Reservation.all

    reservations = get_reservations

    render json: {reservations: reservations}.to_json, status:200
  end

  def index
    movie = Movie.find(params[:movie_id])

    reservations = get_reservations(reservations: movie.reservations.all)

    render json: {reservations: reservations}.to_json, status:200
  end

  def create
    movie = Movie.find(params[:movie_id])

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

  private
  def reservation_params
    params.require(:reservation).permit(:visitor_id, :email, :name, :mobile_phone, :day)
  end

  def get_reservations
    dates = filter_by_dates

    @reservations.where(
      "day >= ? and day <= ?",dates[:start_day], dates[:end_day]
    ).order("day DESC")
  end
end
