json.extract! workout, :id, :workout_name, :workout_type, :location, :time, :intensity, :created_at, :updated_at
json.url workout_url(workout, format: :json)
