require 'test_helper'

class QoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qoutes_index_url
    assert_response :success
  end

  test "should get show" do
    get qoutes_show_url
    assert_response :success
  end

  test "should get new" do
    get qoutes_new_url
    assert_response :success
  end

  test "should get edit" do
    get qoutes_edit_url
    assert_response :success
  end

end
