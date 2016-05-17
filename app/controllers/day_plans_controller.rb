class DayPlansController < ApplicationController
  before_action :set_day_plan, only: [:show, :edit, :update, :destroy]

  # GET /day_plans
  # GET /day_plans.json
  def index
    @day_plans = DayPlan.all
  end

  # GET /day_plans/1
  # GET /day_plans/1.json
  def show
  end

  # GET /day_plans/new
  def new
    @day_plan = DayPlan.new
  end

  # GET /day_plans/1/edit
  def edit
  end

  # POST /day_plans
  # POST /day_plans.json
  def create
    @day_plan = DayPlan.new(day_plan_params)

    respond_to do |format|
      if @day_plan.save
        format.html { redirect_to @day_plan, notice: 'Day plan was successfully created.' }
        format.json { render :show, status: :created, location: @day_plan }
      else
        format.html { render :new }
        format.json { render json: @day_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_plans/1
  # PATCH/PUT /day_plans/1.json
  def update
    respond_to do |format|
      if @day_plan.update(day_plan_params)
        format.html { redirect_to @day_plan, notice: 'Day plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_plan }
      else
        format.html { render :edit }
        format.json { render json: @day_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_plans/1
  # DELETE /day_plans/1.json
  def destroy
    @day_plan.destroy
    respond_to do |format|
      format.html { redirect_to day_plans_url, notice: 'Day plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_plan
      @day_plan = DayPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_plan_params
      params.require(:day_plan).permit(:name)
    end
end
