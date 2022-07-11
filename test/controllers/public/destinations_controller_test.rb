require "test_helper"

class Public::DestinationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_destinations_new_url
    assert_response :success
  end

  test "should get index" do
    get public_destinations_index_url
    assert_response :success
  end

  test "should get show" do
    get public_destinations_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_destinations_edit_url
    assert_response :success
  end
end
