require 'test_helper'

class SlotsControllerTest < ActionController::TestCase
  setup do
    @slot = slots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slot" do
    assert_difference('Slot.count') do
      post :create, slot: { description: @slot.description, end_time: @slot.end_time, start_time: @slot.start_time, title: @slot.title }
    end

    assert_redirected_to slot_path(assigns(:slot))
  end

  test "should show slot" do
    get :show, id: @slot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slot
    assert_response :success
  end

  test "should update slot" do
    patch :update, id: @slot, slot: { description: @slot.description, end_time: @slot.end_time, start_time: @slot.start_time, title: @slot.title }
    assert_redirected_to slot_path(assigns(:slot))
  end

  test "should destroy slot" do
    assert_difference('Slot.count', -1) do
      delete :destroy, id: @slot
    end

    assert_redirected_to slots_path
  end
end
