class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :location
      t.text :description
      t.integer :capacity
      t.text :facilities
      t.string :access
      t.integer :price_per_night
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
