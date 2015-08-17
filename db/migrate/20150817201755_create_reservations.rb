class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.string :room_type
      t.references :user, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
