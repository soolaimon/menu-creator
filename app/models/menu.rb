class Menu < ActiveRecord::Base
  validates :name, :owner, presence: true
  has_many :menu_items, dependent: :destroy
  accepts_nested_attributes_for :menu_items, allow_destroy: true

  private

  def add_menu_item
    menu_items.build if menu_items.empty?
  end


end
