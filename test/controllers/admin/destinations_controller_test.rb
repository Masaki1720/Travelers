require "test_helper"

class Admin::DestinationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_destinations_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_destinations_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_destinations_edit_url
    assert_response :success
  end
end
