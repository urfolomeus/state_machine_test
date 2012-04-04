require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # initial state is not being set
  test "a new post has an initial state of 'draft'" do
    post = Post.new(title: "Test", description: "This is a test")
    assert_equal "draft", post.state
  end

  # before_validation hack used by brent works
  test "new post has valid state" do
    post = Post.new(title: "Test", description: "This is a test")
    assert post.valid?
  end

  # publishing event works
  test "published post has 'listed' state" do
    post = Post.create(title: "Test", description: "This is a test")
    assert_equal "draft", post.state
    post.publish
    assert_equal "listed", post.state
  end
end
