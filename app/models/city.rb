class City < ActiveRecord::Base
   validates :lat, presence: true
  validates :long, presence: true
  
  before_validation :geocode
  
  private 
  def geocode
    places = Nominatim.search.city(self.name).limit(1)
    if places.first
      self.lat = places.first.lat
      self.long = places.first.lon
      
    end
  end 
   
end