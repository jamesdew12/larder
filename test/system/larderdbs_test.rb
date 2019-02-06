require "application_system_test_case"

class LarderdbsTest < ApplicationSystemTestCase
  setup do
    @larderdb = larderdbs(:one)
  end

  test "visiting the index" do
    visit larderdbs_url
    assert_selector "h1", text: "Larderdbs"
  end

  test "creating a Larderdb" do
    visit larderdbs_url
    click_on "New Larderdb"

    fill_in "Food", with: @larderdb.food
    fill_in "Nutrition", with: @larderdb.nutrition
    click_on "Create Larderdb"

    assert_text "Larderdb was successfully created"
    click_on "Back"
  end

  test "updating a Larderdb" do
    visit larderdbs_url
    click_on "Edit", match: :first

    fill_in "Food", with: @larderdb.food
    fill_in "Nutrition", with: @larderdb.nutrition
    click_on "Update Larderdb"

    assert_text "Larderdb was successfully updated"
    click_on "Back"
  end

  test "destroying a Larderdb" do
    visit larderdbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Larderdb was successfully destroyed"
  end
end
