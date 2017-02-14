class Item < ApplicationRecord
  has_many :item_purchases
  has_many :purchases, through: :item_purchases
end
