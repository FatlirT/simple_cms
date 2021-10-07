require 'test_helper'

class PageTest < ActiveSupport::TestCase

  setup do
    @page = pages(:two)
    @subject = subjects(:corona)

  end

  test "page with valid data" do
    page = Page.new(subject: @subject, name: "name", permalink: "permalink", position: 4, visible: true, content: "dsdsds")
    assert page.valid?
  end

  # test "report with valid data, uniqueness" do
  #   report = Report.create(reporter_id: @reporter.id, reportee_id: @reportee.id, message: "testuser test report message", handled: false)
  #   report2 = Report.new(reporter_id: @reporter.id, reportee_id: @reportee.id, message: "testuser test report message", handled: false)
  #   assert !report2.valid?
  # end

  # test "report with valid data, but with true handled value" do
  #   report = Report.new(reporter_id: @reporter.id, reportee_id: @reportee.id, message: "testuser test report message", handled: true)

  #   assert report.valid?
  # end

  # test "report with invalid data, no reporter" do
  #   report = Report.new(reportee_id: @reportee.id, message: "testuser test report message", handled: false)
  #   assert !report.valid?
  # end

  # test "report with invalid data, no reportee" do
  #   report = Report.new(reporter_id: @reporter.id, message: "testuser test report message", handled: false)
  #   assert !report.valid?
  # end

  # test "report with invalid data, no message" do

  #   report = Report.new(reporter_id: @reporter.id, reportee_id: @reportee.id, handled: false)
  #   assert !report.valid?
  # end

  # test "report with invalid data, no handled value" do
  #   report = Report.new(reporter_id: @reporter.id, reportee_id: @reportee.id, message: "message test")
  #   assert report.valid?
  # end

  # test "report with invalid data, no data" do
  #   report = Report.new()
  #   assert !report.valid?
  # end

  # test "report with invalid data, short message (1 below accepted threshold)" do
  #   report = Report.new(reporter_id: @reporter.id, reportee_id: @reportee.id, message: "test user", handled: false)
  #   assert !report.valid?
  # end

end
