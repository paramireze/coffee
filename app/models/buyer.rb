class Buyer < ApplicationRecord
  belongs_to :user
  belongs_to :purchase
end
