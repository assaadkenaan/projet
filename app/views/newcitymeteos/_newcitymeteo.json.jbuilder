json.extract! newcitymeteo, :id, :name, :lat, :lon, :temperature, :summary, :created_at, :updated_at
json.url newcitymeteo_url(newcitymeteo, format: :json)