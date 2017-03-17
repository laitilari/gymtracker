require 'test_helper'

class TrainingmovesControllerTest < ActionController::TestCase
  setup do
    @trainingmove = trainingmoves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainingmoves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trainingmove" do
    assert_difference('Trainingmove.count') do
      post :create, trainingmove: { move_id: @trainingmove.move_id, training_id: @trainingmove.training_id }
    end

    assert_redirected_to trainingmove_path(assigns(:trainingmove))
  end

  test "should show trainingmove" do
    get :show, id: @trainingmove
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trainingmove
    assert_response :success
  end

  test "should update trainingmove" do
    patch :update, id: @trainingmove, trainingmove: { move_id: @trainingmove.move_id, training_id: @trainingmove.training_id }
    assert_redirected_to trainingmove_path(assigns(:trainingmove))
  end

  test "should destroy trainingmove" do
    assert_difference('Trainingmove.count', -1) do
      delete :destroy, id: @trainingmove
    end

    assert_redirected_to trainingmoves_path
  end
end
