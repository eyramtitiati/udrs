require "test_helper"

class Admin::BasentasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_basentas_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_basentas_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_basentas_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_basentas_show_url
    assert_response :success
  end
end
