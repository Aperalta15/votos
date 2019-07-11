require 'test_helper'

class PersonaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get persona_index_url
    assert_response :success
  end

  test "should get edit" do
    get persona_edit_url
    assert_response :success
  end

  test "should get show" do
    get persona_show_url
    assert_response :success
  end

  test "should get new" do
    get persona_new_url
    assert_response :success
  end

end
