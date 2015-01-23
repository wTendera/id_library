require 'test_helper'

class BookCopiesControllerTest < ActionController::TestCase
  setup do
    @book_copy = book_copies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_copies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_copy" do
    assert_difference('BookCopy.count') do
      post :create, book_copy: { branch_id: @book_copy.branch_id, cover_type: @book_copy.cover_type, edition_id: @book_copy.edition_id }
    end

    assert_redirected_to book_copy_path(assigns(:book_copy))
  end

  test "should show book_copy" do
    get :show, id: @book_copy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_copy
    assert_response :success
  end

  test "should update book_copy" do
    patch :update, id: @book_copy, book_copy: { branch_id: @book_copy.branch_id, cover_type: @book_copy.cover_type, edition_id: @book_copy.edition_id }
    assert_redirected_to book_copy_path(assigns(:book_copy))
  end

  test "should destroy book_copy" do
    assert_difference('BookCopy.count', -1) do
      delete :destroy, id: @book_copy
    end

    assert_redirected_to book_copies_path
  end
end
