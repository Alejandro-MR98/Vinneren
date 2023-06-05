class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :material_number
      t.integer :stock
      t.references :sup_sub_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
