class DropMoviesSchedulesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :movies_schedules
  end
end
