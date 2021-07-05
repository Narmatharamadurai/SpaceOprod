class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :material
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
