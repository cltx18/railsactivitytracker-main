json.extract! expense, :id, :name, :vendor, :qty, :cost, :unit, :date_added, :category, :description, :location, :created_at, :updated_at
json.url expense_url(expense, format: :json)
