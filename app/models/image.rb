class Image < ApplicationRecord
  belongs_to :image_type

  scope :random, -> { order(Arel::Nodes::NamedFunction.new('RANDOM', [])) }
end
