class AddPrefectureToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :prefecture, :integer
  end
end
