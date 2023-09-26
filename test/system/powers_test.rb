require "application_system_test_case"

class PowersTest < ApplicationSystemTestCase
  setup do
    @power = powers(:one)
  end

  test "visiting the index" do
    visit powers_url
    assert_selector "h1", text: "Powers"
  end

  test "should create power" do
    visit powers_url
    click_on "New power"

    fill_in "Name", with: @power.name
    click_on "Create Power"

    assert_text "Power was successfully created"
    click_on "Back"
  end

  test "should update Power" do
    visit power_url(@power)
    click_on "Edit this power", match: :first

    fill_in "Name", with: @power.name
    click_on "Update Power"

    assert_text "Power was successfully updated"
    click_on "Back"
  end

  test "should destroy Power" do
    visit power_url(@power)
    click_on "Destroy this power", match: :first

    assert_text "Power was successfully destroyed"
  end
end
