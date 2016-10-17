require 'test_helper'

class NewcitymeteosControllerTest < ActionController::TestCase
  setup do
    @newcitymeteo = newcitymeteos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newcitymeteos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newcitymeteo" do
    assert_difference('Newcitymeteo.count') do
      post :create, newcitymeteo: { lat: @newcitymeteo.lat, lon: @newcitymeteo.lon, name: @newcitymeteo.name, summary: @newcitymeteo.summary, temperature: @newcitymeteo.temperature }
    end

    assert_redirected_to newcitymeteo_path(assigns(:newcitymeteo))
  end

  test "should show newcitymeteo" do
    get :show, id: @newcitymeteo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newcitymeteo
    assert_response :success
  end

  test "should update newcitymeteo" do
    patch :update, id: @newcitymeteo, newcitymeteo: { lat: @newcitymeteo.lat, lon: @newcitymeteo.lon, name: @newcitymeteo.name, summary: @newcitymeteo.summary, temperature: @newcitymeteo.temperature }
    assert_redirected_to newcitymeteo_path(assigns(:newcitymeteo))
  end

  test "should destroy newcitymeteo" do
    assert_difference('Newcitymeteo.count', -1) do
      delete :destroy, id: @newcitymeteo
    end

    assert_redirected_to newcitymeteos_path
  end
end
