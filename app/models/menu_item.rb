class MenuItem < ActiveRecord::Base
  belongs_to :menu
  validates :menu_id, presence: true
end
