require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { AccCode: @invoice.AccCode, Address: @invoice.Address, Cnt1: @invoice.Cnt1, DatePage: @invoice.DatePage, DateSent: @invoice.DateSent, Memo: @invoice.Memo, MobileNo: @invoice.MobileNo, Name1: @invoice.Name1, NumEY: @invoice.NumEY, OrderNo: @invoice.OrderNo, OwnerName: @invoice.OwnerName, PhoneNo: @invoice.PhoneNo, PrdName: @invoice.PrdName, ZipCode: @invoice.ZipCode, iPage: @invoice.iPage, iPrice: @invoice.iPrice, iWeight: @invoice.iWeight }
    end

    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { AccCode: @invoice.AccCode, Address: @invoice.Address, Cnt1: @invoice.Cnt1, DatePage: @invoice.DatePage, DateSent: @invoice.DateSent, Memo: @invoice.Memo, MobileNo: @invoice.MobileNo, Name1: @invoice.Name1, NumEY: @invoice.NumEY, OrderNo: @invoice.OrderNo, OwnerName: @invoice.OwnerName, PhoneNo: @invoice.PhoneNo, PrdName: @invoice.PrdName, ZipCode: @invoice.ZipCode, iPage: @invoice.iPage, iPrice: @invoice.iPrice, iWeight: @invoice.iWeight }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end
