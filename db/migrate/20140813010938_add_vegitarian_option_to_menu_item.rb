class AddVegitarianOptionToMenuItem < ActiveRecord::Migration
  def change
    add_column :menu_items, :vegetarian, :boolean, default: false
  end
end
