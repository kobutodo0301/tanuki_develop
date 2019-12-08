require 'test_helper'

class TanukiPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get tanuki_pages_home_url
    assert_response :success
  end

end
