require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new({username: "lillil", password: "lollillil", password_confirmation: "lollillil"})
  end

  test "user with valid data" do
    assert @user.valid?
  end

  test "user with invalid data, password confirmation doesn't match" do
    @user.password_confirmation = "lil"
    assert !@user.valid?
  end

  test "user with invalid data, username is less than 6 characters" do
    @user.username = "l" * 5
    assert !@user.valid?
  end

  test "user with invalid data, username is more than 20 characters" do
    @user.username = "l" * 21
    assert !@user.valid?
  end

  test "user with invalid data, blank username" do
    @user.username = " " * 6
    assert !@user.valid?
  end

  test "user with invalid data, no username" do
    @user.username = nil
    assert !@user.valid?
  end

  test "uniqueness, username" do
    duplicate_user = @user.dup
    @user.save
    assert !duplicate_user.valid?
  end

  test "case insensitivity, username" do
    duplicate_user = @user.dup
    duplicate_user.username = duplicate_user.username.upcase
    @user.save
    assert !duplicate_user.valid?
  end

  test "function, lower_case()" do
    down_cased_username = @user.username.downcase
    @user.username = @user.username.upcase
    @user.save
    assert down_cased_username == @user.username
  end

  test "user with invalid data, password is less than 8 characters" do
    @user.password = @user.password_confirmation = "1" * 7
    assert !@user.valid?
  end

  test "user with invalid data, password is more than 20 characters" do
    @user.password = @user.password_confirmation = "1" * 21
    assert !@user.valid?
  end

  test "user with invalid data, blank password" do
    @user.password = @user.password_confirmation = " " * 8
    assert !@user.valid?
  end

  test "user with invalid data, no password" do
    @user.password = @user.password_confirmation = nil
    assert !@user.valid?
  end




  



end
