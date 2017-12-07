require 'test_helper'

class BackcallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backcall = backcalls(:one)
  end

  test "should get index" do
    get backcalls_url
    assert_response :success
  end

  test "should get new" do
    get new_backcall_url
    assert_response :success
  end

  test "should create backcall" do
    assert_difference('Backcall.count') do
      post backcalls_url, params: { backcall: { name: @backcall.name, phone: @backcall.phone } }
    end

    assert_redirected_to backcall_url(Backcall.last)
  end

  test "should show backcall" do
    get backcall_url(@backcall)
    assert_response :success
  end

  test "should get edit" do
    get edit_backcall_url(@backcall)
    assert_response :success
  end

  test "should update backcall" do
    patch backcall_url(@backcall), params: { backcall: { name: @backcall.name, phone: @backcall.phone } }
    assert_redirected_to backcall_url(@backcall)
  end

  test "should destroy backcall" do
    assert_difference('Backcall.count', -1) do
      delete backcall_url(@backcall)
    end

    assert_redirected_to backcalls_url
  end
end
