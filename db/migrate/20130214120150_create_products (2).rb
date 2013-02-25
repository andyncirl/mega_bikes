class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :make
      t.text :description
      t.text :specification
      t.string :image_url
      t.integer :year
      t.float :price

      t.timestamps
    end
  end
end
