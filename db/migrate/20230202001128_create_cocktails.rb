class CreateCocktails < ActiveRecord::Migration[7.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.integer :ml
      t.text :ingredients
      t.text :description
      t.decimal :price
      t.boolean :status
      t.decimal :discount
      t.integer :category_id
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
