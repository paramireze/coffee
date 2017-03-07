class Purchase < ApplicationRecord
  belongs_to :item
  has_many :buyers
  has_many :users, through: :buyers

  scope :sorted, lambda { order("purchase_date desc")}

end
