# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'

Movie.destroy_all
Reservation.destroy_all

while Movie.all.count < 9 do
  i = Movie.all.count
  puts i
  
  movie_data_base = TheMovieDbService.new
  movie_info      = movie_data_base.get_movie_info(id: rand(400..500))

  unless movie_info[:name].nil?
    movie = Movie.create!(
      name:         movie_info[:name],
      image_url:    movie_info[:image],
      description:  movie_info[:synopsis],
      start_day:    Date.parse("2019/11/1#{i}"),
      end_day:      Date.parse("2019/12/1#{i}"),
    )

    9.times do |j|
      movie.reservations.create!(
        visitor_id:   "12314545",
        name:         "david",
        email:        "david@one.com",
        mobile_phone: 123123123,
        day:          movie.start_day
      )
    end
  end
end
