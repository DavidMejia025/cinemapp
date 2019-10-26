# == Schema Information
#
# Table name: schedules
#
#  id         :bigint           not null, primary key
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Schedule < ApplicationRecord
  has_and_belongs_to_many :movies
end
