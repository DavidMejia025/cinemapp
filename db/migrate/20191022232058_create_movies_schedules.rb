class CreateMoviesSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :movies_schedules do |t|
      t.belongs_to :movie
      t.belongs_to :schedule
    end
  end
end
