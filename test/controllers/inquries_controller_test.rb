require 'test_helper'

class InquriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inquries_index_url
    assert_response :success
  end

  test "should get confirm" do
    get inquries_confirm_url
    assert_response :success
  end

  test "should get thanks" do
    get inquries_thanks_url
    assert_response :success
  end

end
