class Image < ApplicationRecord
  enum image_type: [ :background, :profile ]
end
