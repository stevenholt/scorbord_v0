require 'test_helper'

class PlaysControllerTest < ActionController::TestCase
  setup do
    @play = plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play" do
    assert_difference('Play.count') do
      post :create, play: { comments: @play.comments, deltayards: @play.deltayards, distance: @play.distance, down: @play.down, formation: @play.formation, hashmark: @play.hashmark, los: @play.los, number: @play.number, passer: @play.passer, playcall: @play.playcall, receiver: @play.receiver, result: @play.result, rusher: @play.rusher }
    end

    assert_redirected_to play_path(assigns(:play))
  end

  test "should show play" do
    get :show, id: @play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play
    assert_response :success
  end

  test "should update play" do
    patch :update, id: @play, play: { comments: @play.comments, deltayards: @play.deltayards, distance: @play.distance, down: @play.down, formation: @play.formation, hashmark: @play.hashmark, los: @play.los, number: @play.number, passer: @play.passer, playcall: @play.playcall, receiver: @play.receiver, result: @play.result, rusher: @play.rusher }
    assert_redirected_to play_path(assigns(:play))
  end

  test "should destroy play" do
    assert_difference('Play.count', -1) do
      delete :destroy, id: @play
    end

    assert_redirected_to plays_path
  end
end
