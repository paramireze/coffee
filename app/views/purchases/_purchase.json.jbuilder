json.extract! purchase, :id, :store, :purchaseDate, :deleted, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)