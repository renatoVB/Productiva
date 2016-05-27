require 'test_helper'

class ActivitiesControllerTest < ActionController::TestCase
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post :create, activity: { activity: @activity.activity, area: @activity.area, category: @activity.category, code: @activity.code, hours: @activity.hours, month: @activity.month, shift: @activity.shift, startdate: @activity.startdate, summaty: @activity.summaty, supervisor: @activity.supervisor, team: @activity.team, week: @activity.week, year: @activity.year }
    end

    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should show activity" do
    get :show, id: @activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity
    assert_response :success
  end

  test "should update activity" do
    patch :update, id: @activity, activity: { activity: @activity.activity, area: @activity.area, category: @activity.category, code: @activity.code, hours: @activity.hours, month: @activity.month, shift: @activity.shift, startdate: @activity.startdate, summaty: @activity.summaty, supervisor: @activity.supervisor, team: @activity.team, week: @activity.week, year: @activity.year }
    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete :destroy, id: @activity
    end

    assert_redirected_to activities_path
  end
end
