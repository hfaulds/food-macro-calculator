class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :carbohydrates
      t.float :fat
      t.float :protein

      t.timestamps null: false
    end
  end
end
