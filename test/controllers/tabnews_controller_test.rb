require "test_helper"

class TabnewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tabnews_index_url
    assert_response :success
  end
end
