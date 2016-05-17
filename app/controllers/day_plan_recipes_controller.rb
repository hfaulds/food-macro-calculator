class DayPlanRecipesController < ApplicationController
  before_action :set_day_plan_recipe, only: [:show, :edit, :update, :destroy]
  before_action :set_day_plan

  # GET /day_plan_recipes
  # GET /day_plan_recipes.json
  def index
    @day_plan_recipes = @day_plan.day_plan_recipes
  end

  # GET /day_plan_recipes/1
  # GET /day_plan_recipes/1.json
  def show
  end

  # GET /day_plan_recipes/new
  def new
    @day_plan_recipe = DayPlanRecipe.new
  end

  # GET /day_plan_recipes/1/edit
  def edit
  end

  # POST /day_plan_recipes
  # POST /day_plan_recipes.json
  def create
    @day_plan_recipe = @day_plan.day_plan_recipes.new(day_plan_recipe_params)

    respond_to do |format|
      if @day_plan_recipe.save
        format.html { redirect_to [@day_plan, @day_plan_recipe], notice: 'Day plan recipe was successfully created.' }
        format.json { render :show, status: :created, location: @day_plan_recipe }
      else
        format.html { render :new }
        format.json { render json: @day_plan_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_plan_recipes/1
  # PATCH/PUT /day_plan_recipes/1.json
  def update
    respond_to do |format|
      if @day_plan_recipe.update(day_plan_recipe_params)
        format.html { redirect_to @day_plan_recipe, notice: 'Day plan recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_plan_recipe }
      else
        format.html { render :edit }
        format.json { render json: @day_plan_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_plan_recipes/1
  # DELETE /day_plan_recipes/1.json
  def destroy
    @day_plan_recipe.destroy
    respond_to do |format|
      format.html { redirect_to day_plan_day_plan_recipes_url(@day_plan), notice: 'Day plan recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_plan_recipe
      @day_plan_recipe = DayPlanRecipe.find(params[:id])
    end

    def set_day_plan
      @day_plan = DayPlan.find(params[:day_plan_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_plan_recipe_params
      params.require(:day_plan_recipe).permit(:day_plan_id, :recipe_id)
    end
end
