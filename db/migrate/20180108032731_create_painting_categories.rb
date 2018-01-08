class CreatePaintingCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :painting_categories do |t|
      t.string :name
      t.string :slug
      t.text :overview
      t.integer :position

      t.timestamps
    end
  end
end
