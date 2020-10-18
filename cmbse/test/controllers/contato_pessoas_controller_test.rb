require 'test_helper'

class ContatoPessoasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contato_pessoas_index_url
    assert_response :success
  end

  test "should get edit" do
    get contato_pessoas_edit_url
    assert_response :success
  end

  test "should get new" do
    get contato_pessoas_new_url
    assert_response :success
  end

  test "should get show" do
    get contato_pessoas_show_url
    assert_response :success
  end

end
