require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get posts_index,_url
    assert_response :success
  end

  test "should get show," do
    get posts_show,_url
    assert_response :success
  end

  test "should get create," do
    get posts_create,_url
    assert_response :success
  end

  test "should get update," do
    get posts_update,_url
    assert_response :success
  end

  test "should get edit," do
    get posts_edit,_url
    assert_response :success
  end

  test "should get delete" do
    get posts_delete_url
    assert_response :success
  end

end
