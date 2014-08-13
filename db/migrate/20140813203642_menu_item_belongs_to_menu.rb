class MenuItemBelongsToMenu < ActiveRecord::Migration
  def change
    add_column :menu_items, :menu_id, :integer, null: false
  end
end
