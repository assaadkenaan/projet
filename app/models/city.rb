class City < ActiveRecord::Base
  before_create :geocode

   public
 
  def forecast_io
   
    forecast = ForecastIO.forecast(self.lat, self.long, params: { units: 'si' }) 
    results = {} 
       results[:temperature] = forecast.currently.temperature 
    results[:summary] = forecast.currently.summary

      results 
  end
  
  private

  def geocode
    places = Nominatim.search.city(self.name).limit(1)
    self.lat=places.first.lat
    self.long=places.first.lon
  end

end