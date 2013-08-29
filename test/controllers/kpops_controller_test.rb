require 'test_helper'

class KpopsControllerTest < ActionController::TestCase
  setup do
    @kpop = kpops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kpops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kpop" do
    assert_difference('Kpop.count') do
      post :create, kpop: { birth: @kpop.birth, exist: @kpop.exist, famous: @kpop.famous, group: @kpop.group, leader: @kpop.leader, member: @kpop.member }
    end

    assert_redirected_to kpop_path(assigns(:kpop))
  end

  test "should show kpop" do
    get :show, id: @kpop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kpop
    assert_response :success
  end

  test "should update kpop" do
    patch :update, id: @kpop, kpop: { birth: @kpop.birth, exist: @kpop.exist, famous: @kpop.famous, group: @kpop.group, leader: @kpop.leader, member: @kpop.member }
    assert_redirected_to kpop_path(assigns(:kpop))
  end

  test "should destroy kpop" do
    assert_difference('Kpop.count', -1) do
      delete :destroy, id: @kpop
    end

    assert_redirected_to kpops_path
  end
end
