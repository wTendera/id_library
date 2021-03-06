require 'test_helper'

class BorrowsControllerTest < ActionController::TestCase
  setup do
    @borrow = borrows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borrows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrow" do
    assert_difference('Borrow.count') do
      post :create, borrow: { borrow_date: @borrow.borrow_date, client_id: @borrow.client_id, return_date: @borrow.return_date, return_final_date: @borrow.return_final_date, specimen_id: @borrow.specimen_id }
    end

    assert_redirected_to borrow_path(assigns(:borrow))
  end

  test "should show borrow" do
    get :show, id: @borrow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrow
    assert_response :success
  end

  test "should update borrow" do
    patch :update, id: @borrow, borrow: { borrow_date: @borrow.borrow_date, client_id: @borrow.client_id, return_date: @borrow.return_date, return_final_date: @borrow.return_final_date, specimen_id: @borrow.specimen_id }
    assert_redirected_to borrow_path(assigns(:borrow))
  end

  test "should destroy borrow" do
    assert_difference('Borrow.count', -1) do
      delete :destroy, id: @borrow
    end

    assert_redirected_to borrows_path
  end
end
