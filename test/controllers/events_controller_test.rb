require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)  # Load the "Sample Event One" fixture
    
    # Simulate login if authentication is required and not using Devise
    post login_url, params: { email: @user.email, password: 'password123' }
  end

  test "should get index" do
    get events_url
    assert_response :success
    assert_not_nil assigns(:events)
    assert_select 'h1', 'Events'  # Assumes an <h1> with 'Events' on index page
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
    assert_select 'h1', @event.name  # Assumes event name is displayed in an <h1>
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count', 1) do
      post events_url, params: { event: { name: "New Event", date: "2024-12-25", location: "San Francisco" } }
    end

    assert_redirected_to event_url(Event.last)
    follow_redirect!
    assert_select 'p.notice', 'Event was successfully created'  # Assumes flash notice displayed as <p> element
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { name: "Updated Event Name" } }
    assert_redirected_to event_url(@event)
    follow_redirect!
    assert_select 'p.notice', 'Event was successfully updated.'  # Assumes flash notice displayed as <p> element
    @event.reload
    assert_equal "Updated Event Name", @event.name
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
    follow_redirect!
    assert_select 'p.notice', 'Event was successfully deleted'  # Assumes flash notice on deletion
  end
end
