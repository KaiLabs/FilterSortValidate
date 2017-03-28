class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :dish
      t.text :description
      t.integer :length
      t.text :ingredients

      t.timestamps
    end
  end
end
