require "application_system_test_case"

class HybridsTest < ApplicationSystemTestCase
  setup do
    @hybrid = hybrids(:one)
  end

  test "visiting the index" do
    visit hybrids_url
    assert_selector "h1", text: "Hybrids"
  end

  test "should create hybrid" do
    visit hybrids_url
    click_on "New hybrid"

    fill_in "Color", with: @hybrid.color
    fill_in "Name", with: @hybrid.name
    click_on "Create Hybrid"

    assert_text "Hybrid was successfully created"
    click_on "Back"
  end

  test "should update Hybrid" do
    visit hybrid_url(@hybrid)
    click_on "Edit this hybrid", match: :first

    fill_in "Color", with: @hybrid.color
    fill_in "Name", with: @hybrid.name
    click_on "Update Hybrid"

    assert_text "Hybrid was successfully updated"
    click_on "Back"
  end

  test "should destroy Hybrid" do
    visit hybrid_url(@hybrid)
    click_on "Destroy this hybrid", match: :first

    assert_text "Hybrid was successfully destroyed"
  end
end
