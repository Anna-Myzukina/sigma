# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Audit Sample App'
  end

  test 'should get home' do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

  test 'should get checklist' do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', "Checklist | #{@base_title}"
  end

  test 'should get audit' do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', "Audit | #{@base_title}"
  end
end
