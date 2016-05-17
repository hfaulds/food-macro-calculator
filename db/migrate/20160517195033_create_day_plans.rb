class CreateDayPlans < ActiveRecord::Migration
  def change
    create_table :day_plans do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
