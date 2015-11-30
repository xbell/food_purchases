class Food < ActiveRecord::Base
  validates :item, :cost, presence: true
end
