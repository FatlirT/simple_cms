require 'test_helper'

class SubjectTest < ActiveSupport::TestCase

  test "subject with valid data" do
    subject = Subject.new(name: "name", position: 4, visible: false)
    assert subject.valid?
  end

  test "subject with valid data, but with true visible value" do
    subject = Subject.new( name: "name", position: 4, visible: true)
    assert subject.valid?
  end

  test "subject with invalid data, no visible value" do
    subject = Subject.new( name: "name", position: 4, visible: nil)
    assert subject.valid? # defaults to true
  end

  test "subject with invalid data, no name" do
    subject = Subject.new( name: nil, position: 4, visible: true)
    assert !subject.valid?
  end


  test "subject with invalid data, no position" do
    subject = Subject.new( name: "name", position: nil, visible: true)
    assert !subject.valid?
  end

  test "subject with invalid data, no data" do
    subject = Subject.new()
    assert !subject.valid?
  end

  # uniquness rules tests

  test "subject with valid data, uniqueness same name" do
    subject = Subject.create( name: "name", position: 4, visible: true)
    subject2 = Subject.new( name: "name", position: 5, visible: true)
    assert !subject2.valid?
  end

  test "subject with valid data, same position" do
    subject = Subject.create( name: "name", position: 4, visible: true)
    subject2 = Subject.new( name: "name2", position: 4, visible: true)
    assert !subject2.valid?
  end

  
end
