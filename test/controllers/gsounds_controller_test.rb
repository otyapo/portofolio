require 'test_helper'

class GsoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get gsounds_show_url
    assert_response :success
  end

  test "should get index" do
    get gsounds_index_url
    assert_response :success
  end

  test "should get new" do
    get gsounds_new_url
    assert_response :success
  end

  test "should get create" do
    get gsounds_create_url
    assert_response :success
  end

  test "should get edit" do
    get gsounds_edit_url
    assert_response :success
  end

  test "should get update" do
    get gsounds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gsounds_destroy_url
    assert_response :success
  end

end
