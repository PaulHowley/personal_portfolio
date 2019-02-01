require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test "can create an article" do
    get "admin/articles/new"
    assert_response :success

    post "admin/articles",
    params: {article: { title: "can create", body: "article successfully."} }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Title: \n can create"
  end
end
