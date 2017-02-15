class ItemPurchase < ApplicationRecord
  belongs_to :purchase
  belongs_to :item
  accepts_nested_attributes_for :item
end
