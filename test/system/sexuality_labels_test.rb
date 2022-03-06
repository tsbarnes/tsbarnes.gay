require "application_system_test_case"

class SexualityLabelsTest < ApplicationSystemTestCase
  setup do
    @sexuality_label = sexuality_labels(:one)
  end

  test "visiting the index" do
    visit sexuality_labels_url
    assert_selector "h1", text: "Sexuality labels"
  end

  test "should create sexuality label" do
    visit sexuality_labels_url
    click_on "New sexuality label"

    fill_in "Name", with: @sexuality_label.name
    click_on "Create Sexuality label"

    assert_text "Sexuality label was successfully created"
    click_on "Back"
  end

  test "should update Sexuality label" do
    visit sexuality_label_url(@sexuality_label)
    click_on "Edit this sexuality label", match: :first

    fill_in "Name", with: @sexuality_label.name
    click_on "Update Sexuality label"

    assert_text "Sexuality label was successfully updated"
    click_on "Back"
  end

  test "should destroy Sexuality label" do
    visit sexuality_label_url(@sexuality_label)
    click_on "Destroy this sexuality label", match: :first

    assert_text "Sexuality label was successfully destroyed"
  end
end
