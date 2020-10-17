require 'test_helper'

class TipoContatosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tipo_contatos_index_url
    assert_response :success
  end

  test "should get edit" do
    get tipo_contatos_edit_url
    assert_response :success
  end

  test "should get new" do
    get tipo_contatos_new_url
    assert_response :success
  end

  test "should get show" do
    get tipo_contatos_show_url
    assert_response :success
  end

end
