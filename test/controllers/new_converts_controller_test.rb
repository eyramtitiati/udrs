require "test_helper"

class NewConvertsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_converts_new_url
    assert_response :success
  end

  test "should get create" do
    get new_converts_create_url
    assert_response :success
  end

  test "should get show" do
    get new_converts_show_url
    assert_response :success
  end
end
