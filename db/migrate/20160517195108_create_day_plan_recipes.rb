class CreateDayPlanRecipes < ActiveRecord::Migration
  def change
    create_table :day_plan_recipes do |t|
      t.integer :day_plan_id
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
