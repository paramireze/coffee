class Item < ApplicationRecord
  has_many :purchase
  belongs_to :item_type
  belongs_to :store


  def price_field
    helper.number_to_currency(price, :precision => 2)
  end

  private

  def helper
    @helper ||= Class.new do
      include ActionView::Helpers::NumberHelper
    end.new
  end

  def price_with_store_with_brand
    "#{price_field}: #{store.name} - #{brand}"
  end

  def store_with_brand
    "#{store.name} - #{brand}"
  end
end
