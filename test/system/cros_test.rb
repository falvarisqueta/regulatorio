require "application_system_test_case"

class CrosTest < ApplicationSystemTestCase
  setup do
    @cro = cros(:one)
  end

  test "visiting the index" do
    visit cros_url
    assert_selector "h1", text: "Cros"
  end

  test "creating a Cro" do
    visit cros_url
    click_on "New Cro"

    click_on "Create Cro"

    assert_text "Cro was successfully created"
    click_on "Back"
  end

  test "updating a Cro" do
    visit cros_url
    click_on "Edit", match: :first

    click_on "Update Cro"

    assert_text "Cro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cro" do
    visit cros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cro was successfully destroyed"
  end
end
