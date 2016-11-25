require 'test_helper'

class BumpsControllerTest < ActionController::TestCase
  setup do
    @bump = bumps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bumps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bump" do
    assert_difference('Bump.count') do
      post :create, bump: { depth: @bump.depth, latitude: @bump.latitude, lengthSteps: @bump.lengthSteps, longitude: @bump.longitude, videoUrl: @bump.videoUrl, widthSteps: @bump.widthSteps }
    end

    assert_redirected_to bump_path(assigns(:bump))
  end

  test "should show bump" do
    get :show, id: @bump
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bump
    assert_response :success
  end

  test "should update bump" do
    patch :update, id: @bump, bump: { depth: @bump.depth, latitude: @bump.latitude, lengthSteps: @bump.lengthSteps, longitude: @bump.longitude, videoUrl: @bump.videoUrl, widthSteps: @bump.widthSteps }
    assert_redirected_to bump_path(assigns(:bump))
  end

  test "should destroy bump" do
    assert_difference('Bump.count', -1) do
      delete :destroy, id: @bump
    end

    assert_redirected_to bumps_path
  end
end
