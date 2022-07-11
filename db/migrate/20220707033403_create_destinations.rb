class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :spot_name
      t.text :spot_introduction
      t.integer :destination_area, null: false, default: 0
      t.string :city
      t.string :transportation
      t.text :route
      t.integer :transportation_pay, null: false, default: 0
      t.integer :destination_pay, null: false, default: 0
      t.string :hotel
      t.integer :hotel_pay, null: false, default: 0
      t.text :other_info
      t.timestamps
    end
  end
end
