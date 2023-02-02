class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.time :time_open
      t.time :time_close
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
