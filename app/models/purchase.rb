class Purchase < ApplicationRecord
  has_many :item_purchases
  has_many :items, through: :item_purchases

end
