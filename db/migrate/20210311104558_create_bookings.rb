class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.string :status
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :island, null: false, foreign_key: true

      t.timestamps
    end
  end
end
