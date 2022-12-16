require "application_system_test_case"

class CauthusTest < ApplicationSystemTestCase
  setup do
    @cauthu = cauthus(:one)
  end

  test "visiting the index" do
    visit cauthus_url
    assert_selector "h1", text: "Cauthus"
  end

  test "should create cauthu" do
    visit cauthus_url
    click_on "New cauthu"

    fill_in "Age", with: @cauthu.age
    fill_in "Club", with: @cauthu.club
    fill_in "Name", with: @cauthu.name
    click_on "Create Cauthu"

    assert_text "Cauthu was successfully created"
    click_on "Back"
  end

  test "should update Cauthu" do
    visit cauthu_url(@cauthu)
    click_on "Edit this cauthu", match: :first

    fill_in "Age", with: @cauthu.age
    fill_in "Club", with: @cauthu.club
    fill_in "Name", with: @cauthu.name
    click_on "Update Cauthu"

    assert_text "Cauthu was successfully updated"
    click_on "Back"
  end

  test "should destroy Cauthu" do
    visit cauthu_url(@cauthu)
    click_on "Destroy this cauthu", match: :first

    assert_text "Cauthu was successfully destroyed"
  end
end
