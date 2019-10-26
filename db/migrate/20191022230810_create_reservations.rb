class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer  :movie_id
      t.integer  :visitor_id
      t.string   :name
      t.string   :email
      t.integer  :mobile_phone

      t.timestamps
    end
  end
end
