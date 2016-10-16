class Meteo < ActiveRecord::Base
  validates :city, presence: true
  validates :temperature, presence: true
  before_validation :forecast_io
  
  public 
  def forecast_io
    temp = ForecastIO.temp(self.temperature, params :{units:'si'})
    self.temperature = temp.currently.temperature
  end
end
