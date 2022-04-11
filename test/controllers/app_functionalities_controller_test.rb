require "test_helper"

class AppFunctionalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_functionality = app_functionalities(:one)
  end

  test "should get index" do
    get app_functionalities_url
    assert_response :success
  end

  test "should get new" do
    get new_app_functionality_url
    assert_response :success
  end

  test "should create app_functionality" do
    assert_difference('AppFunctionality.count') do
      post app_functionalities_url, params: { app_functionality: { app_package: @app_functionality.app_package, app_version: @app_functionality.app_version, is_locked: @app_functionality.is_locked } }
    end

    assert_redirected_to app_functionality_url(AppFunctionality.last)
  end

  test "should show app_functionality" do
    get app_functionality_url(@app_functionality)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_functionality_url(@app_functionality)
    assert_response :success
  end

  test "should update app_functionality" do
    patch app_functionality_url(@app_functionality), params: { app_functionality: { app_package: @app_functionality.app_package, app_version: @app_functionality.app_version, is_locked: @app_functionality.is_locked } }
    assert_redirected_to app_functionality_url(@app_functionality)
  end

  test "should destroy app_functionality" do
    assert_difference('AppFunctionality.count', -1) do
      delete app_functionality_url(@app_functionality)
    end

    assert_redirected_to app_functionalities_url
  end
end
