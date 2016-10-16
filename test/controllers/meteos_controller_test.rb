require 'test_helper'

class MeteosControllerTest < ActionController::TestCase
  setup do
    @meteo = meteos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meteos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meteo" do
    VCR.use_cassette("forecast_io") do
      assert_difference(meteo.count) do
        post:create, meteo :{name: @city.name, temperature: @meteo.temperature}
      end
    end
    assert_difference('Meteo.count') do
      
    end

    assert_redirected_to meteo_path(assigns(:meteo))
  end

  test "should show meteo" do
    get :show, id: @meteo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meteo
    assert_response :success
  end

  test "should update meteo" do
    VCR.use_cassette("forecast_io") do
      patch:update, id :@meteo, meteo: {name: @city.name,temperature:@meteo.temperature}
 
      assert_redirected_to meteo_path(assigns(:meteo))
    end
  end

  test "should destroy meteo" do
    assert_difference('Meteo.count', -1) do
      delete :destroy, id: @meteo
    end

    assert_redirected_to meteos_path
  end
end
