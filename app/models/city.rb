class City < ActiveRecord::Base
   validates :lat, presence: true
  validates :long, presence: true
  
  before_validation :geocode
  
  public
  def forecast_io
    meteo = ForecastIO.forecast(self.lat, self.lon, params: { units: 'si' })
    results = {}
	  results[:temperature] = meteo.currently.temperature
	  results
  end  
  
  def geocode
    places = Nominatim.search.city(self.name).limit(1)
    if places.first
      self.lat = places.first.lat
      self.long = places.first.lon
      
    end
  end 
   
end