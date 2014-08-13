class Menu < ActiveRecord::Base
  validates [:name, :owner], presence: true
end
