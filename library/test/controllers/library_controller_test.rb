require 'test_helper'

class LibraryControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get new_checkout" do
    get :new_checkout
    assert_response :success
  end

  test "should get new_checkin" do
    get :new_checkin
    assert_response :success
  end

end
