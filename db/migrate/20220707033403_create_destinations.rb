class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :spot_name
      t.text :spot_introduction
      t.string :prefecture
      t.string :city
      t.string :transportation
      t.text :route
      t.string :destination_pay
      t.string :transportation_pay
      t.string :hotel
      t.string :hotel_pay
      t.text :other_info
      t.timestamps
    end
  end
end
