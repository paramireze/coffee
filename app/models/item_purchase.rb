class ItemPurchase < ApplicationRecord
  belongs_to :purchase
  belongs_to :item
end
