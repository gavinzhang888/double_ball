class DoubleBallsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_double_ball, only: [:show, :edit, :update, :destroy]

  # GET /double_balls
  # GET /double_balls.json
  def index
    @double_balls = DoubleBall.all.paginate(page:params[:page],per_page:10)
  end

  def list_show
    @double_balls = DoubleBall.all.paginate(page:params[:page],per_page:20)
  end

  # GET /double_balls/1
  # GET /double_balls/1.json
  def show
  end

  # GET /double_balls/new
  def new
    @double_ball = DoubleBall.new
  end

  # GET /double_balls/1/edit
  def edit
  end

  # POST /double_balls
  # POST /double_balls.json
  def create
    @double_ball = DoubleBall.new(double_ball_params)

    respond_to do |format|
      if @double_ball.save
        format.html { redirect_to @double_ball, notice: 'Double ball was successfully created.' }
        format.json { render :show, status: :created, location: @double_ball }
      else
        format.html { render :new }
        format.json { render json: @double_ball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /double_balls/1
  # PATCH/PUT /double_balls/1.json
  def update
    respond_to do |format|
      if @double_ball.update(double_ball_params)
        format.html { redirect_to @double_ball, notice: 'Double ball was successfully updated.' }
        format.json { render :show, status: :ok, location: @double_ball }
      else
        format.html { render :edit }
        format.json { render json: @double_ball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /double_balls/1
  # DELETE /double_balls/1.json
  def destroy
    @double_ball.destroy
    respond_to do |format|
      format.html { redirect_to double_balls_url, notice: 'Double ball was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_double_ball
      @double_ball = DoubleBall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def double_ball_params
      params.require(:double_ball).permit(:period_number, :date, :red1, :red2, :red3, :red4, :red5, :red6, :blue, :week_num)
    end
end
