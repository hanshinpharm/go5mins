require 'test_helper'

class ExosControllerTest < ActionController::TestCase
  setup do
    @exo = exos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exo" do
    assert_difference('Exo.count') do
      post :create, exo: { OwnerName: @exo.OwnerName, PrdName: @exo.PrdName }
    end

    assert_redirected_to exo_path(assigns(:exo))
  end

  test "should show exo" do
    get :show, id: @exo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exo
    assert_response :success
  end

  test "should update exo" do
    patch :update, id: @exo, exo: { OwnerName: @exo.OwnerName, PrdName: @exo.PrdName }
    assert_redirected_to exo_path(assigns(:exo))
  end

  test "should destroy exo" do
    assert_difference('Exo.count', -1) do
      delete :destroy, id: @exo
    end

    assert_redirected_to exos_path
  end
end
