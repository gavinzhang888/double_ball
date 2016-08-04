class HistoryBallsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_history_ball, only: [:show, :edit, :update, :destroy]

  # GET /history_balls
  # GET /history_balls.json
  def index
    @history_balls = HistoryBall.all
  end

  # GET /history_balls/1
  # GET /history_balls/1.json
  def show
  end

  # GET /history_balls/new
  def new
    @history_ball = HistoryBall.new
  end

  # GET /history_balls/1/edit
  def edit
  end

  # POST /history_balls
  # POST /history_balls.json
  def create
    @history_ball = HistoryBall.new(history_ball_params)

    respond_to do |format|
      if @history_ball.save
        format.html { redirect_to @history_ball, notice: 'History ball was successfully created.' }
        format.json { render :show, status: :created, location: @history_ball }
      else
        format.html { render :new }
        format.json { render json: @history_ball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /history_balls/1
  # PATCH/PUT /history_balls/1.json
  def update
    respond_to do |format|
      if @history_ball.update(history_ball_params)
        format.html { redirect_to @history_ball, notice: 'History ball was successfully updated.' }
        format.json { render :show, status: :ok, location: @history_ball }
      else
        format.html { render :edit }
        format.json { render json: @history_ball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /history_balls/1
  # DELETE /history_balls/1.json
  def destroy
    @history_ball.destroy
    respond_to do |format|
      format.html { redirect_to history_balls_url, notice: 'History ball was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_ball
      @history_ball = HistoryBall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_ball_params
      params.require(:history_ball).permit(:period_number, :date, :red1, :red2, :red3, :red4, :red5, :red6, :blue, :week_num)
    end
end
