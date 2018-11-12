require 'test_helper'

class AsoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get asounds_show_url
    assert_response :success
  end

  test "should get index" do
    get asounds_index_url
    assert_response :success
  end

  test "should get new" do
    get asounds_new_url
    assert_response :success
  end

  test "should get create" do
    get asounds_create_url
    assert_response :success
  end

  test "should get edit" do
    get asounds_edit_url
    assert_response :success
  end

  test "should get update" do
    get asounds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get asounds_destroy_url
    assert_response :success
  end

end
