json.extract! meteo, :id, :city, :temperature, :created_at, :updated_at
json.url meteo_url(meteo, format: :json)