require "application_system_test_case"

class EspecialidadsTest < ApplicationSystemTestCase
  setup do
    @especialidad = especialidads(:one)
  end

  test "visiting the index" do
    visit especialidads_url
    assert_selector "h1", text: "Especialidads"
  end

  test "creating a Especialidad" do
    visit especialidads_url
    click_on "New Especialidad"

    click_on "Create Especialidad"

    assert_text "Especialidad was successfully created"
    click_on "Back"
  end

  test "updating a Especialidad" do
    visit especialidads_url
    click_on "Edit", match: :first

    click_on "Update Especialidad"

    assert_text "Especialidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Especialidad" do
    visit especialidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Especialidad was successfully destroyed"
  end
end
