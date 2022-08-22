require "test_helper"

class JewelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jewels_index_url
    assert_response :success
  end

  test "should get show" do
    get jewels_show_url
    assert_response :success
  end
end
