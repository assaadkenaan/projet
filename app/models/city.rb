class City < ActiveRecord::Base
  before_validation :geocode
  
  private 
  def geocode
    places = Nominatim.search.city(self.name).limit(1)
    self.lat = places.first.lat
    self.long = places.first.lon
   
  end 
   
end