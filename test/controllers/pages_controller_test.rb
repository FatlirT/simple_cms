require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @page = pages(:one)
    @subject = subjects(:weather)
  end

  # testing routes with valid data

  test "should get index" do
    get pages_path
    assert_response :success
  end

  test "should get show page" do
    get page_path(@page)
    assert_response :success
  end

  test "should get new" do
    get new_page_path
    assert_response :success
  end

  test "should create page via post (with valid data)" do
    assert_difference('Page.count', 1) do
      post pages_path, params: { page: { subject_id: @subject.id , name: "plates", position: 3, permalink: "jarinje@brnjak.com", visible: false, content: "jarinje brnjaku"} }
    end
    assert_redirected_to(pages_path)
  end

  test "should get edit page" do
    get edit_page_path(@page)
    assert_response :success
  end

  test "should update page via post/patch (with valid data)" do
    patch page_path(@page), params: { page: { name: "plates", position: 74, permalink: "jarinje@brnjak.com", visible: false, content: "jarinje brnjaku"} }
    assert_redirected_to(page_path(@page))
  end

  test "should get delete page" do
    get delete_page_path(@page)
    assert_response :success
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete page_path(@page)
    end
    assert_redirected_to(pages_path)
  end

  # validation testing


end
