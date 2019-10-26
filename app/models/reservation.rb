# == Schema Information
#
# Table name: reservations
#
#  id           :bigint           not null, primary key
#  movie_id     :integer
#  visitor_id   :integer
#  name         :string
#  email        :string
#  mobile_phone :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :movie
end
