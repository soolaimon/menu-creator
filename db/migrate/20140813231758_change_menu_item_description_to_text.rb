class ChangeMenuItemDescriptionToText < ActiveRecord::Migration
  def change
    change_column :menu_items, :description, :text
  end
end
