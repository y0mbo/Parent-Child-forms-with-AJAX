require 'test_helper'

class BidPackagesControllerTest < ActionController::TestCase
  setup do
    @bid_package = bid_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bid_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bid_package" do
    assert_difference('BidPackage.count') do
      post :create, bid_package: @bid_package.attributes
    end

    assert_redirected_to bid_package_path(assigns(:bid_package))
  end

  test "should show bid_package" do
    get :show, id: @bid_package.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bid_package.to_param
    assert_response :success
  end

  test "should update bid_package" do
    put :update, id: @bid_package.to_param, bid_package: @bid_package.attributes
    assert_redirected_to bid_package_path(assigns(:bid_package))
  end

  test "should destroy bid_package" do
    assert_difference('BidPackage.count', -1) do
      delete :destroy, id: @bid_package.to_param
    end

    assert_redirected_to bid_packages_path
  end
end
