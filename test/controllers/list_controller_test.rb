require "test_helper"

class ListControllerTest < ActionDispatch::IntegrationTest
  test "should get testA" do
    get list_testA_url
    assert_response :success
  end

  test "should get create" do
    get list_create_url
    assert_response :success
  end
end
