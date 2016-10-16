require 'test_helper'

class ForecastTest < ActiveSupport::TestCase
  setup do
    @forecast = forecasts(:one)
    @cityWrong = forecasts(:two)
  end
end