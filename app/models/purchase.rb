class Purchase < ApplicationRecord
  belongs_to :item
  has_many :buyers
  has_many :users, through: :buyers
  
end
