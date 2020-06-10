require 'test_helper'

class PostCommentControllerTest < ActionDispatch::IntegrationTest
  test "should get comment:text" do
    get post_comment_comment:text_url
    assert_response :success
  end

  test "should get user_id:integer" do
    get post_comment_user_id:integer_url
    assert_response :success
  end

  test "should get book_id:integer" do
    get post_comment_book_id:integer_url
    assert_response :success
  end

end
