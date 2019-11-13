# == Schema Information
#
# Table name: reservations
#
#  id           :integer          not null, primary key
#  movie_id     :integer
#  visitor_id   :integer
#  name         :string
#  email        :string
#  mobile_phone :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  day          :date
#

class Reservation < ApplicationRecord
  before_save :verify_seats
  belongs_to :movie

  private
   def verify_seats
     movie = Movie.find(self.movie_id)

     if (movie.reservations.where(day: self.day).count > 10)
       raise Exception.new('There are no more seats for this movie this day.')
     end
   end
end
