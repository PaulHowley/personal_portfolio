require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should see articles" do
    get articles_show_url
    assert_response :success
  end
end
