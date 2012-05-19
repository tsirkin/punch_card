require 'test_helper'

class CardPunchesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:card_punches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card_punch" do
    assert_difference('CardPunch.count') do
      post :create, :card_punch => { }
    end

    assert_redirected_to card_punch_path(assigns(:card_punch))
  end

  test "should show card_punch" do
    get :show, :id => card_punches(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => card_punches(:one).to_param
    assert_response :success
  end

  test "should update card_punch" do
    put :update, :id => card_punches(:one).to_param, :card_punch => { }
    assert_redirected_to card_punch_path(assigns(:card_punch))
  end

  test "should destroy card_punch" do
    assert_difference('CardPunch.count', -1) do
      delete :destroy, :id => card_punches(:one).to_param
    end

    assert_redirected_to card_punches_path
  end
end
