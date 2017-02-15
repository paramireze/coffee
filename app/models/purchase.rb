class Purchase < ApplicationRecord
  has_many :item_purchases
  has_many :items, through: :item_purchases
  accepts_nested_attributes_for :item_purchases
end
