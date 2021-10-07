require 'test_helper'

class PageTest < ActiveSupport::TestCase

  setup do
    @page = pages(:two)
    @subject = subjects(:corona)
    @subject2 = subjects(:weather)

  end

  test "page with valid data" do
    page = Page.new(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    assert page.valid?
  end

  test "page with valid data, but with true visible value" do
    page = Page.new(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: false, content: "dsdsds")
    assert page.valid?
  end

  test "page with invalid data, no visible value" do
    page = Page.new(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: nil, content: "dsdsds")
    assert page.valid? # defaults to true
  end

  test "page with invalid data, no permalink" do
    page = Page.new(subject: @subject, name: "name", permalink: nil, position: 4, visible: true, content: "dsdsds")
    assert !page.valid?
  end

  test "page with invalid data, no name" do
    page = Page.new(subject: @subject, name: nil, permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    assert !page.valid?
  end

  test "page with invalid data, no content" do

    page = Page.new(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: nil)
    assert !page.valid?
  end

  test "page with invalid data, no position" do
    page = Page.new(subject: @subject, name: "name", permalink: "permalink", position: nil, visible: true, content: "dsdsds")
    assert !page.valid?
  end

  test "page with invalid data, no subject" do
    page = Page.new(subject: nil, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    assert !page.valid?
  end

  test "page with invalid data, short content (1 below accepted threshold)" do
    page = Page.new(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsd")
    assert !page.valid?
  end


  test "page with invalid data, no data" do
    page = Page.new()
    assert !page.valid?
  end

  # uniquness rules tests

  test "page with valid data, uniqueness different subject, rest following rules" do
    page = Page.create(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    page2 = Page.new(subject: @subject2, name: "name", permalink: "dsds", position: 7, visible: true, content: "dsdsds")
    assert page2.valid?
  end

  test "page with valid data, uniqueness different subject, same permalink" do
    page = Page.create(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    page2 = Page.new(subject: @subject2, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    assert !page2.valid?
  end

  test "page with valid data, uniqueness same subject, same name" do
    page = Page.create(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    page2 = Page.new(subject: @subject, name: "name", permalink: "w", position: 5, visible: true, content: "dsdsds")
    assert !page2.valid?
  end

  test "page with valid data, uniqueness same subject, same position" do
    page = Page.create(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    page2 = Page.new(subject: @subject, name: "name", permalink: "w", position: 4, visible: true, content: "dsdsds")
    assert !page2.valid?
  end

end
