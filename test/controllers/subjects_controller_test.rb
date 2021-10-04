require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subjects_path
    assert_response :success
  end

  test "should get show" do
    get subject_path(:id)
    assert_response :success
  end

  test "should get new" do
    get new_subject_path
    assert_response :success
  end

  test "should get create" do
    post visitors_path, params: {}
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_path(:id)
    assert_response :success
  end

  test "should get update" do
    get delete_subject_path(:id)
    assert_response :success
  end

  test "should get delete" do
    get delete_subject_path(:id)
    assert_response :success
  end

  test "should get destroy" do
    get delete_subject_path(:id)
    assert_response :success
  end

end
