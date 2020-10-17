require 'test_helper'

class PessoasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pessoas_index_url
    assert_response :success
  end

  test "should get edit" do
    get pessoas_edit_url
    assert_response :success
  end

  test "should get new" do
    get pessoas_new_url
    assert_response :success
  end

  test "should get show" do
    get pessoas_show_url
    assert_response :success
  end

end
