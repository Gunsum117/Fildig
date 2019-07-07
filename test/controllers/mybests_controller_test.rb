require 'test_helper'

class MybestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get mybests_create_url
    assert_response :success
  end

  test "should get destroy" do
    get mybests_destroy_url
    assert_response :success
  end

end
