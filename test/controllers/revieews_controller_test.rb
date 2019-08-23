require 'test_helper'

class RevieewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get revieews_new_url
    assert_response :success
  end

  test "should get create" do
    get revieews_create_url
    assert_response :success
  end

end
