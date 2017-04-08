require 'test_helper'

class HellosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get say" do
    get :say
    assert_response :success
  end

end
