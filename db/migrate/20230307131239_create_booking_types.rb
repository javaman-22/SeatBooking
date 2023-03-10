class CreateBookingTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_types do |t|
      t.string :name
      t.string :location
      t.string :color
      t.integer :duration
      t.boolean :seat_available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
