class AddColumnToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :start_day, :date
    add_column :movies, :end_day, :date
  end
end
