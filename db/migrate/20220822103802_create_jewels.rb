class CreateJewels < ActiveRecord::Migration[7.0]
  def change
    create_table :jewels do |t|
      t.string :name
      t.float :price_per_day
      t.string :brand
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
