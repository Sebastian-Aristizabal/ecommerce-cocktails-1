class AddDefaultValueToCocktailsStatus < ActiveRecord::Migration[7.0]
  def change
    change_column_default :cocktails, :status, from: nil, to: true
  end
end
