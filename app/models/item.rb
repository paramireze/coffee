class Item < ApplicationRecord
  has_one :purchase
  belongs_to :store
end
