require 'test_helper'

class UpliftsControllerTest < ActionController::TestCase
  setup do
    @uplift = uplifts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uplifts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uplift" do
    assert_difference('Uplift.count') do
      post :create, uplift: { title: @uplift.title, url: @uplift.url }
    end

    assert_redirected_to uplift_path(assigns(:uplift))
  end

  test "should show uplift" do
    get :show, id: @uplift
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uplift
    assert_response :success
  end

  test "should update uplift" do
    patch :update, id: @uplift, uplift: { title: @uplift.title, url: @uplift.url }
    assert_redirected_to uplift_path(assigns(:uplift))
  end

  test "should destroy uplift" do
    assert_difference('Uplift.count', -1) do
      delete :destroy, id: @uplift
    end

    assert_redirected_to uplifts_path
  end
end
