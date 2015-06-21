require 'test_helper'

class PostAppsControllerTest < ActionController::TestCase
  setup do
    @post_app = post_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_app" do
    assert_difference('PostApp.count') do
      post :create, post_app: { appDetails: @post_app.appDetails, appName: @post_app.appName, appUrl: @post_app.appUrl, image: @post_app.image }
    end

    assert_redirected_to post_app_path(assigns(:post_app))
  end

  test "should show post_app" do
    get :show, id: @post_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_app
    assert_response :success
  end

  test "should update post_app" do
    patch :update, id: @post_app, post_app: { appDetails: @post_app.appDetails, appName: @post_app.appName, appUrl: @post_app.appUrl, image: @post_app.image }
    assert_redirected_to post_app_path(assigns(:post_app))
  end

  test "should destroy post_app" do
    assert_difference('PostApp.count', -1) do
      delete :destroy, id: @post_app
    end

    assert_redirected_to post_apps_path
  end
end
