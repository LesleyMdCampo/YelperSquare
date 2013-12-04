class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :cuisine
      t.string :hours
      t.string :phone
      t.text :review
      t.string :picture_url

      t.timestamps
    end
  end
end
