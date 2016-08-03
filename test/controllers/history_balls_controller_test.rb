require 'test_helper'

class HistoryBallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @history_ball = history_balls(:one)
  end

  test "should get index" do
    get history_balls_url
    assert_response :success
  end

  test "should get new" do
    get new_history_ball_url
    assert_response :success
  end

  test "should create history_ball" do
    assert_difference('HistoryBall.count') do
      post history_balls_url, params: { history_ball: { blue: @history_ball.blue, date: @history_ball.date, period_number: @history_ball.period_number, red1: @history_ball.red1, red2: @history_ball.red2, red3: @history_ball.red3, red4: @history_ball.red4, red5: @history_ball.red5, red6: @history_ball.red6, week_num: @history_ball.week_num } }
    end

    assert_redirected_to history_ball_url(HistoryBall.last)
  end

  test "should show history_ball" do
    get history_ball_url(@history_ball)
    assert_response :success
  end

  test "should get edit" do
    get edit_history_ball_url(@history_ball)
    assert_response :success
  end

  test "should update history_ball" do
    patch history_ball_url(@history_ball), params: { history_ball: { blue: @history_ball.blue, date: @history_ball.date, period_number: @history_ball.period_number, red1: @history_ball.red1, red2: @history_ball.red2, red3: @history_ball.red3, red4: @history_ball.red4, red5: @history_ball.red5, red6: @history_ball.red6, week_num: @history_ball.week_num } }
    assert_redirected_to history_ball_url(@history_ball)
  end

  test "should destroy history_ball" do
    assert_difference('HistoryBall.count', -1) do
      delete history_ball_url(@history_ball)
    end

    assert_redirected_to history_balls_url
  end
end
