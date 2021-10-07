require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest

  # testing routes with valid data

  test "should get index" do
    get subjects_path
    assert_response :success
  end

  test "should get show subject" do
    subject = subjects(:corona)
    get subject_path(subject)
    assert_response :success
  end

  test "should get new" do
    get new_subject_path
    assert_response :success
  end

  test "should create subject via post (with valid data)" do
    assert_difference('Subject.count', 1) do
      post subjects_path, params: { subject: { name: "jarinje", position: "1", visibility: "false"} }
    end
    assert_redirected_to(subjects_path)
  end

  test "should get edit subject" do
    subject = subjects(:corona)
    get edit_subject_path(subject)
    assert_response :success
  end

  test "should update subject via post/patch (with valid data)" do
    subject = subjects(:corona)
    patch subject_path(subject), params: { subject: { name: "jarinje", position: "1", visibility: "false"} }
    assert_redirected_to(subject_path(subject))
  end

  test "should get delete subject" do
    subject = subjects(:corona)
    get delete_subject_path(subject)
    assert_response :success
  end

  test "should destroy subject" do
    subject = subjects(:corona)
    assert_difference('Subject.count', -1) do
      delete subject_path(subject)
    end
    assert_redirected_to(subjects_path)
  end


  # validation testing




end
