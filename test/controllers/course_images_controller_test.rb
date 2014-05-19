require 'test_helper'

class CourseImagesControllerTest < ActionController::TestCase
  setup do
    @course_image = course_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_image" do
    assert_difference('CourseImage.count') do
      post :create, course_image: {  }
    end

    assert_redirected_to course_image_path(assigns(:course_image))
  end

  test "should show course_image" do
    get :show, id: @course_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_image
    assert_response :success
  end

  test "should update course_image" do
    patch :update, id: @course_image, course_image: {  }
    assert_redirected_to course_image_path(assigns(:course_image))
  end

  test "should destroy course_image" do
    assert_difference('CourseImage.count', -1) do
      delete :destroy, id: @course_image
    end

    assert_redirected_to course_images_path
  end
end
