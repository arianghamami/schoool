require 'test_helper'

class CourseEnrollmentsControllerTest < ActionController::TestCase
  setup do
    @course_enrollment = course_enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_enrollment" do
    assert_difference('CourseEnrollment.count') do
      post :create, course_enrollment: { class_activity_score: @course_enrollment.class_activity_score, final_score: @course_enrollment.final_score, final_term_score: @course_enrollment.final_term_score, mid_term_score: @course_enrollment.mid_term_score, presence_count: @course_enrollment.presence_count }
    end

    assert_redirected_to course_enrollment_path(assigns(:course_enrollment))
  end

  test "should show course_enrollment" do
    get :show, id: @course_enrollment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_enrollment
    assert_response :success
  end

  test "should update course_enrollment" do
    patch :update, id: @course_enrollment, course_enrollment: { class_activity_score: @course_enrollment.class_activity_score, final_score: @course_enrollment.final_score, final_term_score: @course_enrollment.final_term_score, mid_term_score: @course_enrollment.mid_term_score, presence_count: @course_enrollment.presence_count }
    assert_redirected_to course_enrollment_path(assigns(:course_enrollment))
  end

  test "should destroy course_enrollment" do
    assert_difference('CourseEnrollment.count', -1) do
      delete :destroy, id: @course_enrollment
    end

    assert_redirected_to course_enrollments_path
  end
end
