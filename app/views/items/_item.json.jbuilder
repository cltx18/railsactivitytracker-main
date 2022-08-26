json.extract! item, :id, :name, :amount, :category, :location, :date_added, :created_at, :updated_at
json.url item_url(item, format: :json)
