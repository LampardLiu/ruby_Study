require 'test_helper'

class BookControllerTest < ActionController::TestCase
  test "should get get" do
    get :get
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
