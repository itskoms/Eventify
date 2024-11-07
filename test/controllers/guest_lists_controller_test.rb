require "test_helper"

class GuestListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guest_lists_index_url
    assert_response :success
  end

  test "should get update_attendance" do
    get guest_lists_update_attendance_url
    assert_response :success
  end

  test "should get destroy" do
    get guest_lists_destroy_url
    assert_response :success
  end
end
