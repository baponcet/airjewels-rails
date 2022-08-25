class AddAddressToJewel < ActiveRecord::Migration[7.0]
  def change
    add_column :jewels, :address, :string
  end
end
