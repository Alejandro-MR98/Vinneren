require "application_system_test_case"

class SupSubCategoriesTest < ApplicationSystemTestCase
  setup do
    @sup_sub_category = sup_sub_categories(:one)
  end

  test "visiting the index" do
    visit sup_sub_categories_url
    assert_selector "h1", text: "Sup sub categories"
  end

  test "should create sup sub category" do
    visit sup_sub_categories_url
    click_on "New sup sub category"

    fill_in "Name", with: @sup_sub_category.name
    fill_in "Number", with: @sup_sub_category.number
    fill_in "Sub category", with: @sup_sub_category.sub_category_id
    click_on "Create Sup sub category"

    assert_text "Sup sub category was successfully created"
    click_on "Back"
  end

  test "should update Sup sub category" do
    visit sup_sub_category_url(@sup_sub_category)
    click_on "Edit this sup sub category", match: :first

    fill_in "Name", with: @sup_sub_category.name
    fill_in "Number", with: @sup_sub_category.number
    fill_in "Sub category", with: @sup_sub_category.sub_category_id
    click_on "Update Sup sub category"

    assert_text "Sup sub category was successfully updated"
    click_on "Back"
  end

  test "should destroy Sup sub category" do
    visit sup_sub_category_url(@sup_sub_category)
    click_on "Destroy this sup sub category", match: :first

    assert_text "Sup sub category was successfully destroyed"
  end
end
