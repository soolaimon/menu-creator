class MenuItem < ActiveRecord::Base
  belongs_to :menu, null: false
end
