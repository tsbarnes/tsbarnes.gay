require "application_system_test_case"

class GenderLabelsTest < ApplicationSystemTestCase
  setup do
    @gender_label = gender_labels(:one)
  end

  test "visiting the index" do
    visit gender_labels_url
    assert_selector "h1", text: "Gender labels"
  end

  test "should create gender label" do
    visit gender_labels_url
    click_on "New gender label"

    fill_in "Name", with: @gender_label.name
    click_on "Create Gender label"

    assert_text "Gender label was successfully created"
    click_on "Back"
  end

  test "should update Gender label" do
    visit gender_label_url(@gender_label)
    click_on "Edit this gender label", match: :first

    fill_in "Name", with: @gender_label.name
    click_on "Update Gender label"

    assert_text "Gender label was successfully updated"
    click_on "Back"
  end

  test "should destroy Gender label" do
    visit gender_label_url(@gender_label)
    click_on "Destroy this gender label", match: :first

    assert_text "Gender label was successfully destroyed"
  end
end
