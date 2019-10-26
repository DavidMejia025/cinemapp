# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Movie < ApplicationRecord
  has_and_belongs_to_many :schedules
  has_many                :reservations
end
