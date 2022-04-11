require "application_system_test_case"

class AppFunctionalitiesTest < ApplicationSystemTestCase
  setup do
    @app_functionality = app_functionalities(:one)
  end

  test "visiting the index" do
    visit app_functionalities_url
    assert_selector "h1", text: "App Functionalities"
  end

  test "creating a App functionality" do
    visit app_functionalities_url
    click_on "New App Functionality"

    fill_in "App package", with: @app_functionality.app_package
    fill_in "App version", with: @app_functionality.app_version
    check "Is locked" if @app_functionality.is_locked
    click_on "Create App functionality"

    assert_text "App functionality was successfully created"
    click_on "Back"
  end

  test "updating a App functionality" do
    visit app_functionalities_url
    click_on "Edit", match: :first

    fill_in "App package", with: @app_functionality.app_package
    fill_in "App version", with: @app_functionality.app_version
    check "Is locked" if @app_functionality.is_locked
    click_on "Update App functionality"

    assert_text "App functionality was successfully updated"
    click_on "Back"
  end

  test "destroying a App functionality" do
    visit app_functionalities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App functionality was successfully destroyed"
  end
end
