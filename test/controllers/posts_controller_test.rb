require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get private" do
    get posts_private_url
    assert_response :success
  end
end
