class Menu < ActiveRecord::Base
  validates :name, :owner, presence: true
  has_many :menu_items
end
