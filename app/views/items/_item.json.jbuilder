json.extract! item, :id, :name, :price, :brand, :manufacturer, :description, :replaced_by, :replaced, :created_at, :updated_at
json.url item_url(item, format: :json)