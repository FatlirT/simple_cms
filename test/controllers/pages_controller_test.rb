require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  # testing routes with valid data

  test "should get index" do
    get pages_path
    assert_response :success
  end

  test "should get show page" do
    page = pages(:one)
    get page_path(page)
    assert_response :success
  end

  test "should get new" do
    get new_page_path
    assert_response :success
  end

  test "should create page via post (with valid data)" do
    subject = subjects(:corona)
    assert_difference('Page.count', 1) do
      post pages_path, params: { page: { subject_id: subject.id, name: "plates", position: "1", permalink: "jarinje@brnjak.com", visibility: "false", content: "jarinje brnjaku"} }
    end
    assert_redirected_to(pages_path)
  end

  test "should get edit page" do
    page = pages(:one)
    get edit_page_path(page)
    assert_response :success
  end

  test "should update page via post/patch (with valid data)" do
    page = pages(:one)
    patch page_path(page), params: { page: { name: "plates", position: "1", permalink: "jarinje@brnjak.com", visibility: "false", content: "jarinje brnjaku"} }
    assert_redirected_to(page_path(page))
  end

  test "should get delete page" do
    page = pages(:one)
    get delete_page_path(page)
    assert_response :success
  end

  test "should destroy page" do
    page = pages(:one)
    assert_difference('Page.count', -1) do
      delete page_path(page)
    end
    assert_redirected_to(pages_path)
  end

  # validation testing


end
