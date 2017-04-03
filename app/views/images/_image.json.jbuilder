json.extract! image, :id, :image_url, :description, :image_type, :created_at, :updated_at
json.url image_url(image, format: :json)