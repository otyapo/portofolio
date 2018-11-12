require 'test_helper'

class PsoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get psounds_show_url
    assert_response :success
  end

  test "should get index" do
    get psounds_index_url
    assert_response :success
  end

  test "should get new" do
    get psounds_new_url
    assert_response :success
  end

  test "should get create" do
    get psounds_create_url
    assert_response :success
  end

  test "should get edit" do
    get psounds_edit_url
    assert_response :success
  end

  test "should get update" do
    get psounds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get psounds_destroy_url
    assert_response :success
  end

end
