require 'test_helper'

class ChecklistTest < ActiveSupport::TestCase
  def setup
    @user = users(:anna)
    @checklist = Ckecklist.new(content: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @checklist.valid?
  end

  test "user id should be present" do
    @checklist.user_id = nil
    assert_not @checklist.valid?
  end

  test "content should be present" do
    @checklist.content = "   "
    assert_not @checklist.valid?
  end

  test "content should be at most 140 characters" do
    @checklist.content = "a" * 141
    assert_not @checklist.valid?
  end
end
