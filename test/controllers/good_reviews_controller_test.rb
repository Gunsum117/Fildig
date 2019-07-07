require 'test_helper'

class GoodReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get good_reviews_create_url
    assert_response :success
  end

  test "should get destroy" do
    get good_reviews_destroy_url
    assert_response :success
  end

end
