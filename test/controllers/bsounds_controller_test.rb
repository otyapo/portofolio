require 'test_helper'

class BsoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bsounds_show_url
    assert_response :success
  end

  test "should get index" do
    get bsounds_index_url
    assert_response :success
  end

  test "should get new" do
    get bsounds_new_url
    assert_response :success
  end

  test "should get create" do
    get bsounds_create_url
    assert_response :success
  end

  test "should get edit" do
    get bsounds_edit_url
    assert_response :success
  end

  test "should get update" do
    get bsounds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bsounds_destroy_url
    assert_response :success
  end

end
