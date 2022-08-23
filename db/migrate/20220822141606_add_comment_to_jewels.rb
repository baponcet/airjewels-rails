class AddCommentToJewels < ActiveRecord::Migration[7.0]
  def change
    add_column :jewels, :comment, :text
  end
end
