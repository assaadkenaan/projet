class City < ActiveRecord::Base
  validates :lat, presence: true 
  validates :long, presence: true 

  before_validation :geocode

   public
 
  def weather;
    if self.lat
      ForecastIO.forecast(self.lat,self.long).currently.icon
      else
       'unknown'
    end
 end
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
    if places.first
    self.lat=places.first.lat
    self.long=places.first.lon
  end
 end
end
