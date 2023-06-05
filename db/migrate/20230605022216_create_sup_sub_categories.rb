class CreateSupSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sup_sub_categories do |t|
      t.string :number
      t.string :name
      t.references :sub_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
