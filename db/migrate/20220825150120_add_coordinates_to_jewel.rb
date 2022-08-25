class AddCoordinatesToJewel < ActiveRecord::Migration[7.0]
  def change
    add_column :jewels, :latitude, :float
    add_column :jewels, :longitude, :float
  end
end
