require 'test_helper'

class DoubleBallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @double_ball = double_balls(:one)
  end

  test "should get index" do
    get double_balls_url
    assert_response :success
  end

  test "should get new" do
    get new_double_ball_url
    assert_response :success
  end

  test "should create double_ball" do
    assert_difference('DoubleBall.count') do
      post double_balls_url, params: { double_ball: { blue: @double_ball.blue, date: @double_ball.date, period_number: @double_ball.period_number, red1: @double_ball.red1, red2: @double_ball.red2, red3: @double_ball.red3, red4: @double_ball.red4, red5: @double_ball.red5, red6: @double_ball.red6, week_num: @double_ball.week_num } }
    end

    assert_redirected_to double_ball_url(DoubleBall.last)
  end

  test "should show double_ball" do
    get double_ball_url(@double_ball)
    assert_response :success
  end

  test "should get edit" do
    get edit_double_ball_url(@double_ball)
    assert_response :success
  end

  test "should update double_ball" do
    patch double_ball_url(@double_ball), params: { double_ball: { blue: @double_ball.blue, date: @double_ball.date, period_number: @double_ball.period_number, red1: @double_ball.red1, red2: @double_ball.red2, red3: @double_ball.red3, red4: @double_ball.red4, red5: @double_ball.red5, red6: @double_ball.red6, week_num: @double_ball.week_num } }
    assert_redirected_to double_ball_url(@double_ball)
  end

  test "should destroy double_ball" do
    assert_difference('DoubleBall.count', -1) do
      delete double_ball_url(@double_ball)
    end

    assert_redirected_to double_balls_url
  end
end
