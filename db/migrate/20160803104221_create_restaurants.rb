class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.integer :phone_number
      t.string :category

      t.timestamps null: false
    end
  end
end
