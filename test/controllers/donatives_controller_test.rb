require 'test_helper'

class DonativesControllerTest < ActionController::TestCase
  setup do
    @donative = donatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donative" do
    assert_difference('Donative.count') do
      post :create, donative: { bump_id: @donative.bump_id, comment: @donative.comment, money: @donative.money, user_id: @donative.user_id }
    end

    assert_redirected_to donative_path(assigns(:donative))
  end

  test "should show donative" do
    get :show, id: @donative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donative
    assert_response :success
  end

  test "should update donative" do
    patch :update, id: @donative, donative: { bump_id: @donative.bump_id, comment: @donative.comment, money: @donative.money, user_id: @donative.user_id }
    assert_redirected_to donative_path(assigns(:donative))
  end

  test "should destroy donative" do
    assert_difference('Donative.count', -1) do
      delete :destroy, id: @donative
    end

    assert_redirected_to donatives_path
  end
end
