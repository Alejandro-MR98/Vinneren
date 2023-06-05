require "test_helper"

class SupSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sup_sub_category = sup_sub_categories(:one)
  end

  test "should get index" do
    get sup_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_sup_sub_category_url
    assert_response :success
  end

  test "should create sup_sub_category" do
    assert_difference("SupSubCategory.count") do
      post sup_sub_categories_url, params: { sup_sub_category: { name: @sup_sub_category.name, number: @sup_sub_category.number, sub_category_id: @sup_sub_category.sub_category_id } }
    end

    assert_redirected_to sup_sub_category_url(SupSubCategory.last)
  end

  test "should show sup_sub_category" do
    get sup_sub_category_url(@sup_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_sup_sub_category_url(@sup_sub_category)
    assert_response :success
  end

  test "should update sup_sub_category" do
    patch sup_sub_category_url(@sup_sub_category), params: { sup_sub_category: { name: @sup_sub_category.name, number: @sup_sub_category.number, sub_category_id: @sup_sub_category.sub_category_id } }
    assert_redirected_to sup_sub_category_url(@sup_sub_category)
  end

  test "should destroy sup_sub_category" do
    assert_difference("SupSubCategory.count", -1) do
      delete sup_sub_category_url(@sup_sub_category)
    end

    assert_redirected_to sup_sub_categories_url
  end
end
